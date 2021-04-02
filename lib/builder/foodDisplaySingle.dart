import 'package:flutter/material.dart';

class FoodDisplayBuilder extends StatelessWidget {
  final String foodName;
  final String foodRate;

  final String imgPath;
  final Function press;

  FoodDisplayBuilder({
    this.foodName,
    this.imgPath,
    this.press,
    this.foodRate,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        // height: 80,
        // width: 80,
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
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Image.network(
                "localhost:8000/storage/categoris/April2021/v8HpccnjVkTT96jVchdU.jpg"),
            Divider(
              height: 7,
              color: Colors.black,
            ),
            Text(foodName),
            Text('rate: \$\$\$' + foodRate),
          ],
        ),
      ),
    );
  }
}
