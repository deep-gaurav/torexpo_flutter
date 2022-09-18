import 'package:artemis/artemis.dart';
import 'package:flutter/material.dart';
import 'package:gql_websocket_link/gql_websocket_link.dart';
import 'package:torexpo_flutter/home.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

void main() {
  runApp(MyApp());
}

final ArtemisClient client = ArtemisClient.fromLink(
  WebSocketLink(
    null,
    channelGenerator: () => WebSocketChannel.connect(
      Uri.parse(
        "wss://torexpo.sodeep.me/ws",
      ),
      protocols: ['graphql-ws'],
    ),
  ),
);
final baseURL = "https://torexpo.sodeep.me";

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Torexpo',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}
