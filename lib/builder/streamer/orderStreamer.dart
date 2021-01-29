import 'dart:async';

import 'package:anupa_customers/appLists/customersPageList.dart';

class OrderStreamer {
  // Stream
  OrderStreamer() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      _controller.add(customersOrders);
    });
  }

  final _controller = StreamController<List>();

  Stream<List> get stream => _controller.stream;
}
