import 'package:anupa_customers/screens/customersPage/components/selectedFood.dart';
import 'package:anupa_customers/screens/customersPage/components/submissionOrderPage.dart';
import 'package:flutter/material.dart';

import 'foodDisplaySingle.dart';

class FoodDisplayListBuilder extends StatefulWidget {
  final List foodCategory;
  FoodDisplayListBuilder({@required this.foodCategory});

  @override
  _FoodDisplayListBuilderState createState() => _FoodDisplayListBuilderState();
}

class _FoodDisplayListBuilderState extends State<FoodDisplayListBuilder> {
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
                  widget.foodCategory.length,
                  (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FoodDisplayBuilder(
                      foodName: widget.foodCategory[index]["name"],
                      imgPath: widget.foodCategory[index]["image"],
                      foodRate: widget.foodCategory[index]["rate"],
                      press: () {
                        SubmissionOrderPartState()
                            .changingValue(widget.foodCategory[index]["name"]);
                        print(widget.foodCategory[index]["name"]);
                        //selectedIsFood = widget.foodCategory[index]["name"];
                        setState(() {
                          selectedIsFood = widget.foodCategory[index]["name"];
                        });
                        print(selectedIsFood);
                      },
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