import 'dart:async';

import 'package:anupa_customers/appLists/customersPageList.dart';
import 'package:anupa_customers/appLists/kitchenPageList.dart';

class OrderStreamer {
  // Stream
  OrderStreamer() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      _controller.add(customersOrders);
      _controller.add(newOrders);
    });
  }

  final _controller = StreamController<List>();

  Stream<List> get stream => _controller.stream;
}
