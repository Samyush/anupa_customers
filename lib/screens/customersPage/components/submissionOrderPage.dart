import 'package:anupa_customers/appLists/appList.dart';
import 'package:anupa_customers/builder/customButton.dart';
import 'package:anupa_customers/builder/orderListBuilder.dart';
import 'package:anupa_customers/builder/streamer/foodPriceStreamer.dart';
import 'package:anupa_customers/builder/streamer/foodStreamer.dart';
import 'package:flutter/material.dart';

import 'color_dots.dart';

class SubmissionOrderPart extends StatefulWidget {
  @override
  SubmissionOrderPartState createState() => SubmissionOrderPartState();
}

class SubmissionOrderPartState extends State<SubmissionOrderPart> {
  String dropdownValue;

  getPrice() {
    String priceIs = selectedFoodPrice;
    return priceIs;
  }

  _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Forgot to select Order Table!!!'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Please select the order table or select food'),
                Text('Thank you!!!'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                setState(() {
                  Navigator.pop(context);
                });
              },
            ),
            TextButton(
              child: Text('OK'),
              onPressed: () {
                setState(() {
                  // login = false;
                  Navigator.pop(context);
                });
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: SelectedFood().stream,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.lightBlueAccent,
              ),
            );
          }
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              DropdownButton(
                  hint: Text('Please select the Customer Table'),
                  value: dropdownValue,
                  icon: Icon(Icons.arrow_downward),
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  items: tables.map((table) {
                    return DropdownMenuItem(
                      value: table,
                      child: Text(table),
                    );
                  }).toList(),
                  onChanged: (String newValue) {
                    setState(
                      () {
                        dropdownValue = newValue;
                      },
                    );
                  }),

              Text(selectedIsFood),
              ColorDots(),
              //Text(snapshot.data.toString()),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text('Food Price: ' + getPrice()),
                  CustomButton(
                      label: 'Submit',
                      onPressed: () {
                        if (dropdownValue == null ||
                            selectedIsFood == "Please Select Food") {
                          _showMyDialog();
                          print('error, select table number');
                        } else {
                          OrderListBuilder(
                                  tableNo: dropdownValue, priceIs: getPrice())
                              .listAdder(selectedIsFood);
                        }
                        // orderList.add('value');
                        // print(orderList);
                      }
                      // _showMyDialog(),
                      ),
                ],
              ),

              // Text('Quantity'),
            ],
          );
        });
  }
}
