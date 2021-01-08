import 'package:flutter/material.dart';

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
                  color: Colors.amber,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(),
        ),
      ],
    );
  }
}
