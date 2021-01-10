import 'package:anupa_customers/builder/halfPageBuilder.dart';
import 'package:flutter/material.dart';

class AfterLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Colors.white,
                  // Color(0xFFFBCA8F),
                  Color(0xFFFBCA8F),
                ],
              ),
            ),
            // color: Color(0xFFFBCA8F),
            child: HalfPageBuilder(
              label: 'New Orders',
            ),
          ),
          // child: Column(
          //   children: [
          //     Container(
          //       color: Colors.white54,
          //       child: Padding(
          //         padding: const EdgeInsets.all(15.0),
          //         child: Row(
          //           children: [
          //             Text(
          //               'New Orders',
          //               style: TextStyle(
          //                   fontSize: 28, fontWeight: FontWeight.bold),
          //             ),
          //             SizedBox(
          //               width: 100,
          //             ),
          //             // Submit_Button(
          //             //   label: 'Start',
          //             //   onPressed: () {
          //             //     orderList.forEach((orders) {
          //             //       newOrders.add(orders);
          //             //     });
          //             //     print(newOrders);
          //             //   },
          //             // ),
          //           ],
          //         ),
          //       ),
          //     ),
          //     Expanded(
          //       child: HalfPageUiBuilderInsideList(),
          //     ),
          //   ],
          // ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color(0xFFFBCA8F),

                  Colors.white,
                  // Color(0xFFFBCA8F),
                ],
              ),
            ),
            child: HalfPageBuilder(
              label: 'Started Orders',
            ),
          ),
        ),
      ],
    );
  }
}
