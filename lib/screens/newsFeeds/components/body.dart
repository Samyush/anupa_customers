import 'package:anupa_customers/builder/halfPageBuilder.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        //

        Expanded(
          child: HalfPageBuilder(
            label: 'Hope You Have a Great Time Here!!!',
          ),
        ),

        //   Expanded(
        //     child: Container(
        //       // height: 20,
        //       color: Colors.green,
        //     ),
        //   ),
        //   Expanded(
        //     child: Container(
        //       // height: 20,
        //       color: Colors.blue,
        //     ),
        //   ),
        //   Expanded(
        //     child: Container(
        //       // height: 20,
        //       color: Colors.yellow,
        //     ),
        //   ),
        //   Container(
        //     height: 20,
        //     color: Colors.black,
        //   ),
        //   Container(
        //     height: 20,
        //     color: Colors.green,
        //   ),
      ],
    );
  }
}
