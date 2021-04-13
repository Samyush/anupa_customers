import 'package:anupa_customers/appLists/customersPageList.dart';
import 'package:anupa_customers/networking/serverConnection/UserPersonalDemands/sendOrder.dart';
import 'package:anupa_customers/screens/customersPage/components/body.dart';
import 'package:flutter/material.dart';

class CustomersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Place Your Orders'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.send,
              color: Colors.black,
            ),
            tooltip: 'Show Snackbar',
            onPressed: () {
              SendOrders().sendOrder(customersOrdersAsList);
              // MyRating().rateIt(happy, ratingSlider);
            },
          ),
        ],
      ),
      body: Body(),
    );
  }
}
