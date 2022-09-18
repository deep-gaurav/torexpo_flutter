// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddMagnetLink$MutationRoot _$AddMagnetLink$MutationRootFromJson(
        Map<String, dynamic> json) =>
    AddMagnetLink$MutationRoot()..addMagnetLink = json['addMagnetLink'] as int;

Map<String, dynamic> _$AddMagnetLink$MutationRootToJson(
        AddMagnetLink$MutationRoot instance) =>
    <String, dynamic>{
      'addMagnetLink': instance.addMagnetLink,
    };

AddTorrentFile$MutationRoot _$AddTorrentFile$MutationRootFromJson(
        Map<String, dynamic> json) =>
    AddTorrentFile$MutationRoot()
      ..addTorrentFile = json['addTorrentFile'] as int;

Map<String, dynamic> _$AddTorrentFile$MutationRootToJson(
        AddTorrentFile$MutationRoot instance) =>
    <String, dynamic>{
      'addTorrentFile': instance.addTorrentFile,
    };

Start$MutationRoot _$Start$MutationRootFromJson(Map<String, dynamic> json) =>
    Start$MutationRoot()..start = json['start'] as String;

Map<String, dynamic> _$Start$MutationRootToJson(Start$MutationRoot instance) =>
    <String, dynamic>{
      'start': instance.start,
    };

Stop$MutationRoot _$Stop$MutationRootFromJson(Map<String, dynamic> json) =>
    Stop$MutationRoot()..stop = json['stop'] as String;

Map<String, dynamic> _$Stop$MutationRootToJson(Stop$MutationRoot instance) =>
    <String, dynamic>{
      'stop': instance.stop,
    };

Remove$MutationRoot _$Remove$MutationRootFromJson(Map<String, dynamic> json) =>
    Remove$MutationRoot()..remove = json['remove'] as String;

Map<String, dynamic> _$Remove$MutationRootToJson(
        Remove$MutationRoot instance) =>
    <String, dynamic>{
      'remove': instance.remove,
    };

Torrents$QueryRoot$Torrent _$Torrents$QueryRoot$TorrentFromJson(
        Map<String, dynamic> json) =>
    Torrents$QueryRoot$Torrent()
      ..id = json['id'] as int
      ..name = json['name'] as String
      ..state = $enumDecode(_$TorrentStateEnumMap, json['state'],
          unknownValue: TorrentState.artemisUnknown)
      ..info = TorrentFragmentMixin$TorrentInfo.fromJson(
          json['info'] as Map<String, dynamic>)
      ..stats = TorrentFragmentMixin$TorrentStats.fromJson(
          json['stats'] as Map<String, dynamic>);

Map<String, dynamic> _$Torrents$QueryRoot$TorrentToJson(
        Torrents$QueryRoot$Torrent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'state': _$TorrentStateEnumMap[instance.state]!,
      'info': instance.info.toJson(),
      'stats': instance.stats.toJson(),
    };

const _$TorrentStateEnumMap = {
  TorrentState.downloading: 'DOWNLOADING',
  TorrentState.downloadingWait: 'DOWNLOADING_WAIT',
  TorrentState.seeding: 'SEEDING',
  TorrentState.seedingWait: 'SEEDING_WAIT',
  TorrentState.stopped: 'STOPPED',
  TorrentState.checking: 'CHECKING',
  TorrentState.checkingWait: 'CHECKING_WAIT',
  TorrentState.error: 'ERROR',
  TorrentState.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

Torrents$QueryRoot _$Torrents$QueryRootFromJson(Map<String, dynamic> json) =>
    Torrents$QueryRoot()
      ..torrents = (json['torrents'] as List<dynamic>)
          .map((e) =>
              Torrents$QueryRoot$Torrent.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$Torrents$QueryRootToJson(Torrents$QueryRoot instance) =>
    <String, dynamic>{
      'torrents': instance.torrents.map((e) => e.toJson()).toList(),
    };

TorrentFragmentMixin$TorrentInfo _$TorrentFragmentMixin$TorrentInfoFromJson(
        Map<String, dynamic> json) =>
    TorrentFragmentMixin$TorrentInfo()
      ..dateCreated = DateTime.parse(json['dateCreated'] as String)
      ..totalSize = json['totalSize'] as int
      ..files = (json['files'] as List<dynamic>)
          .map((e) => TorrentInfoFragmentMixin$TorrentFile.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$TorrentFragmentMixin$TorrentInfoToJson(
        TorrentFragmentMixin$TorrentInfo instance) =>
    <String, dynamic>{
      'dateCreated': instance.dateCreated.toIso8601String(),
      'totalSize': instance.totalSize,
      'files': instance.files.map((e) => e.toJson()).toList(),
    };

TorrentFragmentMixin$TorrentStats _$TorrentFragmentMixin$TorrentStatsFromJson(
        Map<String, dynamic> json) =>
    TorrentFragmentMixin$TorrentStats()
      ..percentDone = (json['percentDone'] as num).toDouble()
      ..percentComplete = (json['percentComplete'] as num).toDouble()
      ..error = $enumDecode(_$TorrentErrorEnumMap, json['error'],
          unknownValue: TorrentError.artemisUnknown)
      ..errorString = json['errorString'] as String
      ..peersConnected = json['peersConnected'] as int
      ..downloadedEver = json['downloadedEver'] as int
      ..uploadedEver = json['uploadedEver'] as int
      ..sizeWhenDone = json['sizeWhenDone'] as int
      ..isStalled = json['isStalled'] as bool
      ..finished = json['finished'] as bool
      ..eta = json['eta'] as int;

Map<String, dynamic> _$TorrentFragmentMixin$TorrentStatsToJson(
        TorrentFragmentMixin$TorrentStats instance) =>
    <String, dynamic>{
      'percentDone': instance.percentDone,
      'percentComplete': instance.percentComplete,
      'error': _$TorrentErrorEnumMap[instance.error]!,
      'errorString': instance.errorString,
      'peersConnected': instance.peersConnected,
      'downloadedEver': instance.downloadedEver,
      'uploadedEver': instance.uploadedEver,
      'sizeWhenDone': instance.sizeWhenDone,
      'isStalled': instance.isStalled,
      'finished': instance.finished,
      'eta': instance.eta,
    };

const _$TorrentErrorEnumMap = {
  TorrentError.noError: 'NO_ERROR',
  TorrentError.unknown: 'UNKNOWN',
  TorrentError.ioError: 'IO_ERROR',
  TorrentError.parseErr: 'PARSE_ERR',
  TorrentError.parseDuplicate: 'PARSE_DUPLICATE',
  TorrentError.statLocal: 'STAT_LOCAL',
  TorrentError.statTracker: 'STAT_TRACKER',
  TorrentError.statTrackerWarn: 'STAT_TRACKER_WARN',
  TorrentError.makeMetaUrl: 'MAKE_META_URL',
  TorrentError.makeMetaCancelled: 'MAKE_META_CANCELLED',
  TorrentError.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

TorrentInfoFragmentMixin$TorrentFile
    _$TorrentInfoFragmentMixin$TorrentFileFromJson(Map<String, dynamic> json) =>
        TorrentInfoFragmentMixin$TorrentFile()
          ..name = json['name'] as String
          ..length = json['length'] as int
          ..downloadLink = json['downloadLink'] as String?;

Map<String, dynamic> _$TorrentInfoFragmentMixin$TorrentFileToJson(
        TorrentInfoFragmentMixin$TorrentFile instance) =>
    <String, dynamic>{
      'name': instance.name,
      'length': instance.length,
      'downloadLink': instance.downloadLink,
    };

TorrentSubscription$SubscriptionRoot$Torrent
    _$TorrentSubscription$SubscriptionRoot$TorrentFromJson(
            Map<String, dynamic> json) =>
        TorrentSubscription$SubscriptionRoot$Torrent()
          ..id = json['id'] as int
          ..name = json['name'] as String
          ..state = $enumDecode(_$TorrentStateEnumMap, json['state'],
              unknownValue: TorrentState.artemisUnknown)
          ..info = TorrentFragmentMixin$TorrentInfo.fromJson(
              json['info'] as Map<String, dynamic>)
          ..stats = TorrentFragmentMixin$TorrentStats.fromJson(
              json['stats'] as Map<String, dynamic>);

Map<String, dynamic> _$TorrentSubscription$SubscriptionRoot$TorrentToJson(
        TorrentSubscription$SubscriptionRoot$Torrent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'state': _$TorrentStateEnumMap[instance.state]!,
      'info': instance.info.toJson(),
      'stats': instance.stats.toJson(),
    };

TorrentSubscription$SubscriptionRoot
    _$TorrentSubscription$SubscriptionRootFromJson(Map<String, dynamic> json) =>
        TorrentSubscription$SubscriptionRoot()
          ..monitorTorrent =
              TorrentSubscription$SubscriptionRoot$Torrent.fromJson(
                  json['monitorTorrent'] as Map<String, dynamic>);

Map<String, dynamic> _$TorrentSubscription$SubscriptionRootToJson(
        TorrentSubscription$SubscriptionRoot instance) =>
    <String, dynamic>{
      'monitorTorrent': instance.monitorTorrent.toJson(),
    };

AddMagnetLinkArguments _$AddMagnetLinkArgumentsFromJson(
        Map<String, dynamic> json) =>
    AddMagnetLinkArguments(
      magnetLink: json['magnetLink'] as String,
    );

Map<String, dynamic> _$AddMagnetLinkArgumentsToJson(
        AddMagnetLinkArguments instance) =>
    <String, dynamic>{
      'magnetLink': instance.magnetLink,
    };

AddTorrentFileArguments _$AddTorrentFileArgumentsFromJson(
        Map<String, dynamic> json) =>
    AddTorrentFileArguments(
      torrentFile: fromGraphQLUploadToDartMultipartFile(
          json['torrentFile'] as MultipartFile),
    );

Map<String, dynamic> _$AddTorrentFileArgumentsToJson(
        AddTorrentFileArguments instance) =>
    <String, dynamic>{
      'torrentFile': fromDartMultipartFileToGraphQLUpload(instance.torrentFile),
    };

StartArguments _$StartArgumentsFromJson(Map<String, dynamic> json) =>
    StartArguments(
      torrentId: json['torrentId'] as int,
    );

Map<String, dynamic> _$StartArgumentsToJson(StartArguments instance) =>
    <String, dynamic>{
      'torrentId': instance.torrentId,
    };

StopArguments _$StopArgumentsFromJson(Map<String, dynamic> json) =>
    StopArguments(
      torrentId: json['torrentId'] as int,
    );

Map<String, dynamic> _$StopArgumentsToJson(StopArguments instance) =>
    <String, dynamic>{
      'torrentId': instance.torrentId,
    };

RemoveArguments _$RemoveArgumentsFromJson(Map<String, dynamic> json) =>
    RemoveArguments(
      torrentId: json['torrentId'] as int,
    );

Map<String, dynamic> _$RemoveArgumentsToJson(RemoveArguments instance) =>
    <String, dynamic>{
      'torrentId': instance.torrentId,
    };

TorrentSubscriptionArguments _$TorrentSubscriptionArgumentsFromJson(
        Map<String, dynamic> json) =>
    TorrentSubscriptionArguments(
      torrentId: json['torrentId'] as int,
    );

Map<String, dynamic> _$TorrentSubscriptionArgumentsToJson(
        TorrentSubscriptionArguments instance) =>
    <String, dynamic>{
      'torrentId': instance.torrentId,
    };
