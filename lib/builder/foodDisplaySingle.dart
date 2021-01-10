import 'package:flutter/material.dart';

class FoodDisplayBuilder extends StatelessWidget {
  final String foodName;
  final String imgPath;
  final GestureDetector press;

  FoodDisplayBuilder({this.foodName, this.imgPath, this.press});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 3.0,
                blurRadius: 5.0)
          ],
          color: Colors.white),
      child: Column(
        children: <Widget>[
          Image.asset(imgPath),
          Text(foodName),
        ],
      ),
    );
  }
}
