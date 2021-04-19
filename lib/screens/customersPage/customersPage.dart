import 'package:anupa_customers/appLists/customersPageList.dart';
import 'package:anupa_customers/networking/serverConnection/UserPersonalDemands/sendOrder.dart';
import 'package:anupa_customers/screens/customersPage/components/body.dart';
import 'package:flutter/material.dart';

class CustomersPage extends StatelessWidget {
  final String title = 'Place Orders';
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.send,
              color: Colors.black,
            ),
            tooltip: 'Show Snackbar',
            onPressed: () {
              var success = SendOrders().sendOrder(customersOrders);
              if (success != null) {
                // title = 'Success';
                print('og og');
              }
              // MyRating().rateIt(happy, ratingSlider);
            },
          ),
        ],
      ),
      body: Body(),
    );
  }
}
