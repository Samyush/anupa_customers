import 'dart:async';

import 'package:anupa_customers/resources/appList.dart';

class OrderStreamer {
  // Stream
  OrderStreamer() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      _controller.add(ordersList);
    });
  }

  final _controller = StreamController<List>();

  Stream<List> get stream => _controller.stream;
}
