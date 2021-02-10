import 'package:anupa_customers/builder/rounded_icon_btn.dart';
import 'package:flutter/material.dart';

int counter = 0;

class ColorDots extends StatefulWidget {
  @override
  _ColorDotsState createState() => _ColorDotsState();
}

class _ColorDotsState extends State<ColorDots> {
  increment() {
    setState(() {
      counter++;
    });
  }

  decrement() {
    setState(() {
      counter == 0 ? counter = 0 : counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Now this is fixed and only for demo

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          // Spacer(),
          RoundedIconBtn(
            icon: Icons.remove,
            press: () {
              decrement();
            },
          ),
          SizedBox(width: 20),
          Text(
            counter.toString(),
            style: TextStyle(fontSize: 40.0),
          ),
          SizedBox(
            width: 20,
          ),
          RoundedIconBtn(
            icon: Icons.add,
            showShadow: true,
            press: () {
              increment();
            },
          ),
        ],
      ),
    );
    //
  }
}
