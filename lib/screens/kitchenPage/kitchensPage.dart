import 'package:anupa_customers/screens/kitchenPage/components/body.dart';
import 'package:flutter/material.dart';

class KitchenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Our Kitchen'),
      ),
      body: Body(),
    );
  }
}
