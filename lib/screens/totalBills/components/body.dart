import 'package:anupa_customers/appLists/appList.dart';
import 'package:anupa_customers/builder/customButton.dart';
import 'package:anupa_customers/builder/streamer/foodStreamer.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String dropdownValue;

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
                Text('Please select the order table'),
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
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xFFFBCA8F),

            Colors.white,
            // Color(0xFFFBCA8F),
          ],
        ),
      ),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
            CustomButton(
                label: 'Check',
                onPressed: () {
                  if (dropdownValue == null ||
                      selectedIsFood == "Please Select Food") {
                    _showMyDialog();
                    print('error, select table number');
                  } else {
                    // OrderListBuilder(
                    //     tableNo: dropdownValue, priceIs: getPrice())
                    //     .listAdder(selectedIsFood);
                  }
                  // orderList.add('value');
                  // print(orderList);
                }
                // _showMyDialog(),
                ),
            SizedBox(
              height: 40,
            ),
            Card(
              elevation: 2.0,
              color: Colors.white,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const ListTile(
                    leading: Icon(Icons.album),
                    title: Text('Table No: '),
                    subtitle: Text('Total Bill: \$'),
                  ),
                  Text('bill is 100000'),
                  Text('bill is 100000'),
                  Text('bill is 100000'),
                  Text('bill is 100000'),
                  Text('bill is 100000'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
