import 'package:anupa_customers/builder/halfPageBuilder.dart';
import 'package:flutter/material.dart';

import 'category/categorySection.dart';

//randomizing

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFFFBB376),

                        Colors.white,

                        // Color(0xFFFBCA8F),
                      ],
                    ),
                  ),
                  // color: Color(0xFFFBCA8F),
                  child: HalfPageBuilder(
                    label: 'My Orders',
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.white,

                        // Color(0xFFFBCA8F),
                        Color(0xFFFBB376),
                      ],
                    ),
                  ),
                  // color: Colors.green,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: CategorySection(),
        ),
      ],
    );
  }
}
