import 'package:flutter/material.dart';

import 'afterLogin.dart';
import 'kitchenLogin.dart';

bool login = false;

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: login ? AfterLogin() : KitchenLogin(),
    );
  }
}
