import 'package:flutter/material.dart';

import 'foodDisplaySingle.dart';

class FoodDisplayListBuilder extends StatelessWidget {
  final List foodCategory;
  FoodDisplayListBuilder({@required this.foodCategory});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 10.0,
          ),
          Container(
              padding: EdgeInsets.only(right: 15.0),
              width: MediaQuery.of(context).size.width - 30.0,
              height: MediaQuery.of(context).size.height - 200.0,
              child: GridView.count(
                crossAxisCount: 4,
                primary: false,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: 0.8,
                children: List.generate(
                  foodCategory.length,
                  (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FoodDisplayBuilder(
                      foodName: foodCategory[index]["name"],
                      imgPath: foodCategory[index]["image"],
                      // press: () {
                      //   //the following directs towards the per sign in index page
                      //   Navigator.pushNamed(context, categories[index]["page"]);
                      // },
                    ),
                  ),
                ),
              )),
          SizedBox(height: 15.0)
        ],
      ),
    );
  }
}
