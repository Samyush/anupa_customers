import 'package:anupa_customers/networking/serverConnection/UserPersonalDemands/newOrdersToKitchen.dart';
import 'package:anupa_customers/screens/kitchenPage/components/body.dart';
import 'package:flutter/material.dart';

class KitchenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Our Kitchen'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.update,
              size: 30,
            ),
            tooltip: 'Show Snackbar',
            onPressed: () {
              AllOrders().getOrders();
            },
          ),
        ],
      ),
      body: Body(),
    );
  }
}
