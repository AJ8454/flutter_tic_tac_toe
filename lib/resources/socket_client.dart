import 'dart:developer';

import 'package:socket_io_client/socket_io_client.dart' as IO;

class SocketClient {
  IO.Socket? socket;
  static SocketClient? _instance;

  SocketClient._internal() {
    try {
      socket = IO.io('http://192.168.0.101:3000', <String, dynamic>{
        'transports': ['websocket'],
        'autoConnect': false,
      });
      socket!.connect();
      log("socket ");
    } catch (e) {
      log("socket error $e");
    }
  }

  static SocketClient get instance {
    _instance ??= SocketClient._internal();
    return _instance!;
  }
}
