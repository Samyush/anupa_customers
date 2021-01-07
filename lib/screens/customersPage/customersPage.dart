import 'package:anupa_customers/screens/customersPage/components/body.dart';
import 'package:flutter/material.dart';

class CustomersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Place Your Orders'),
      ),
      body: Body(),
    );
  }
}
