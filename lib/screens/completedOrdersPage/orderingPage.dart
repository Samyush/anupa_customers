import 'package:anupa_customers/screens/completedOrdersPage/components/body.dart';
import 'package:flutter/material.dart';

class CompletedOrdersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Completed Orders'),
      ),
      body: Body(),
    );
  }
}
