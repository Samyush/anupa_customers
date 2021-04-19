import 'package:anupa_customers/builder/kitchenPageBuilder.dart';
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
            child: KitchenPageBuilder(
              label: 'New Orders',
            ),
          ),
        ),
        // Expanded(
        //   child: Container(
        //     decoration: BoxDecoration(
        //       gradient: LinearGradient(
        //         begin: Alignment.centerLeft,
        //         end: Alignment.centerRight,
        //         colors: [
        //           Color(0xFFFBCA8F),
        //
        //           Colors.white,
        //           // Color(0xFFFBCA8F),
        //         ],
        //       ),
        //     ),
        //     child: HalfPageBuilder(
        //       label: 'Started Orders',
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
