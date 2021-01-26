import 'package:anupa_customers/builder/streamer/kitchenLoginStreamer.dart';
import 'package:flutter/material.dart';

import 'afterLogin.dart';
import 'kitchenLogin.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Object>(
        stream: LoginStreamer().stream,
        builder: (context, snapshot) {
          return Container(
            child: login ? KitchenLogin() : AfterLogin(),
          );
        });
  }
}
