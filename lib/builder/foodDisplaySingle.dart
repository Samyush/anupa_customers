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
                "https://d2l930y2yx77uc.cloudfront.net/production/uploads/images/11316862/rectangle_large_type_2_bb3e0c5465b477ae3be9f5ccf09e17d0.jpeg"),
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
