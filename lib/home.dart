import 'package:artemis/schema/graphql_response.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:humanizer/humanizer.dart';
import 'package:rational/rational.dart';
import 'package:torexpo_flutter/graphql_api.graphql.dart';
import 'package:torexpo_flutter/main.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:http/http.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<TorrentFragmentMixin> torrents = [];
  GlobalKey<RefreshIndicatorState> refreshKey = GlobalKey();
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      refreshKey.currentState?.show();
    });
  }

  refresh() {
    refreshKey.currentState?.show();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        key: refreshKey,
        onRefresh: () async {
          var data = await client.execute(TorrentsQuery());
          if (mounted) {
            if (data.data?.torrents != null) {
              setState(() {
                torrents = data.data!.torrents;
              });
            }
          }
        },
        child: CustomScrollView(
          slivers: [
            const SliverAppBar(
              title: Text('Torrents'),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                var torrent = torrents[index];
                return UpdatingTorrentTile(
                  refresh: refresh,
                  id: torrent.id,
                  key: Key(torrent.id.toString()),
                );
              }, childCount: torrents.length),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addTorrent();
        },
        child: Icon(Icons.add),
      ),
    );
  }

  addTorrent() async {
    TextEditingController magnet = TextEditingController();
    var torrentData = await showDialog(
      context: context,
      builder: (context) => Dialog(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "Add new torrent",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextField(
                controller: magnet,
                decoration: InputDecoration(
                  labelText: 'Magnet link',
                ),
                maxLines: null,
              ),
              const SizedBox(
                height: 5,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(magnet.text);
                },
                child: Text("Add Magnet Link"),
              ),
              ElevatedButton(
                onPressed: () async {
                  var file = await FilePicker.platform.pickFiles();
                  if (file?.files.isNotEmpty ?? false) {
                    Navigator.of(context).pop(file!.files.first);
                  }
                },
                child: Text("Upload Torrent"),
              ),
            ],
          ),
        ),
      ),
    );
    if (torrentData is String) {
      var addTorrent = await client.execute(AddMagnetLinkMutation(
          variables: AddMagnetLinkArguments(magnetLink: torrentData)));
      refresh();
    } else if (torrentData is PlatformFile) {
      if (torrentData.readStream != null) {
        var addTorrent = await client.execute(AddTorrentFileMutation(
            variables: AddTorrentFileArguments(
                torrentFile: MultipartFile(
          "torrent",
          torrentData.readStream!,
          torrentData.size,
        ))));
      } else if (torrentData.bytes != null) {
        var addTorrent = await uploadClient.execute(AddTorrentFileMutation(
            variables: AddTorrentFileArguments(
                torrentFile: MultipartFile.fromBytes(
          "files",
          torrentData.bytes!.toList(),
          filename: torrentData.name,
        ))));
      }
      refresh();
    }
  }
}

class UpdatingTorrentTile extends StatelessWidget {
  final int id;
  final void Function() refresh;

  const UpdatingTorrentTile(
      {super.key, required this.id, required this.refresh});

  @override
  Widget build(BuildContext context) {
    var streeam = client.stream(TorrentSubscriptionSubscription(
        variables: TorrentSubscriptionArguments(torrentId: id)));
    return StreamBuilder<GraphQLResponse<TorrentSubscription$SubscriptionRoot>>(
      stream: streeam,
      builder: (context, snapshot) {
        if (snapshot.data?.data?.monitorTorrent != null) {
          return TorrentTile(
            torrent: snapshot.data!.data!.monitorTorrent,
            refresh: refresh,
          );
        } else {
          return Container();
        }
      },
    );
  }
}

class TorrentTile extends StatefulWidget {
  final TorrentFragmentMixin torrent;
  final DirItem mainDir;
  final void Function() refresh;

  TorrentTile({super.key, required this.torrent, required this.refresh})
      : mainDir = TDir(torrent.name) {
    for (var file in torrent.info.files) {
      var paths = file.name.split("/");
      DirItem item = mainDir;
      for (int i = 0; i < paths.length; i++) {
        if (i == paths.length - 1 && item is TDir) {
          item.items.add(TFile(file));
        } else {
          if (item is TDir) {
            var dir = item.items
                .any((element) => element is TDir && element.name == paths[i]);
            if (dir) {
              item = item.items.firstWhere(
                  (element) => element is TDir && element.name == paths[i]);
            } else {
              var nDir = TDir(paths[i]);
              item.items.add(nDir);
              item = nDir;
            }
          }
        }
      }
    }
  }

  @override
  State<TorrentTile> createState() => _TorrentTileState();
}

class _TorrentTileState extends State<TorrentTile> {
  bool showFiles = false;

  @override
  void initState() {
    super.initState();
  }

  bool get isComplete =>
      widget.torrent.stats.finished || widget.torrent.stats.percentDone >= 1;

  bool get isStopped => widget.torrent.state == TorrentState.stopped;

  stop() {
    client.execute(
        StopMutation(variables: StopArguments(torrentId: widget.torrent.id)));
  }

  delete() async {
    await client.execute(RemoveMutation(
        variables: RemoveArguments(torrentId: widget.torrent.id)));
    widget.refresh();
  }

  start() {
    client.execute(
        StartMutation(variables: StartArguments(torrentId: widget.torrent.id)));
  }

  Widget drawDirItem(DirItem item) {
    if (item is TDir) {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [Icon(Icons.folder), Expanded(child: Text(item.name))],
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [...item.items.map((e) => drawDirItem(e))],
              ),
            )
          ],
        ),
      );
    } else if (item is TFile) {
      return InkWell(
        onTap: () {
          if (item.file.downloadLink != null) {
            launchUrlString(baseURL + item.file.downloadLink!,
                mode: LaunchMode.externalApplication);
          }
        },
        child: Container(
          child: Row(
            children: [
              Icon(Icons.download),
              Expanded(
                child: Opacity(
                  opacity: item.file.downloadLink == null ? 0.3 : 1,
                  child: Text(item.name),
                ),
              )
            ],
          ),
        ),
      );
    }
    throw "how?";
  }

  toggle() {
    setState(() {
      showFiles = !showFiles;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        toggle();
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            decoration: BoxDecoration(
              color: isComplete ? Colors.green : null,
              gradient: isComplete
                  ? null
                  : LinearGradient(colors: [
                      Colors.green,
                      Colors.green,
                      Colors.white,
                      Colors.white,
                    ], stops: [
                      0,
                      widget.torrent.stats.percentDone,
                      widget.torrent.stats.percentDone,
                      1
                    ]),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.7),
                    blurRadius: 5,
                    offset: Offset(0, 5))
              ],
            ),
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    children: [
                      Text(
                        widget.torrent.name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Text("Status: ${widget.torrent.state.name}")
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                              "Downloaded: ${InformationSize.fromBytes(Rational.fromInt(widget.torrent.stats.downloadedEver))}"),
                          const Spacer(),
                          Text(
                              "Total Size: ${InformationSize.fromBytes(Rational.fromInt(widget.torrent.info.totalSize))}"),
                        ],
                      ),
                      if (!isStopped) ...[
                        Row(
                          children: [
                            Text(
                                "Peers Connected: ${widget.torrent.stats.peersConnected}"),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                                "ETA: ${Duration(seconds: widget.torrent.stats.eta).toApproximateTime()}"),
                          ],
                        ),
                      ]
                    ],
                  ),
                ),
                AnimatedSize(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeOut,
                  child: Container(
                    height: showFiles ? null : 0,
                    child: drawDirItem(widget.mainDir),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor.withOpacity(0.5),
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(8)),
                  ),
                  child: Row(
                    children: [
                      Spacer(),
                      IconButton(
                        onPressed: () {
                          if (isStopped) {
                            start();
                          } else {
                            stop();
                          }
                        },
                        icon: Icon(isStopped ? Icons.play_arrow : Icons.pause),
                      ),
                      IconButton(
                        onPressed: () {
                          delete();
                        },
                        icon: Icon(Icons.delete),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

abstract class DirItem {}

class TFile extends DirItem {
  final TorrentInfoFragmentMixin$TorrentFile file;
  String get name => file.name.split("/").last;

  TFile(this.file);
}

class TDir extends DirItem {
  final String name;
  final List<DirItem> items = [];
  TDir(this.name);
}
