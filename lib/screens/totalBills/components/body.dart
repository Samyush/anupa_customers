import 'package:anupa_customers/appLists/appList.dart';
import 'package:anupa_customers/builder/customButton.dart';
import 'package:anupa_customers/builder/streamer/foodStreamer.dart';
import 'package:anupa_customers/networking/serverConnection/mainConnection.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String dropdownValue;
  String totalBill = 'No bill';

  Future<dynamic> getBills(var neededUrl) async {
    MainConnection connector = MainConnection(neededUrl);

    var tableBill = await connector.receiveData();
    print(tableBill);
    // print(foodDetails);
    return updateUI(tableBill);
    // return foodDetails;
  }

  updateUI(var billData) {
    if (billData['amount'] == 0) {
      setState(() {
        totalBill = '0';
      });
    } else {
      setState(() {
        totalBill = billData['amount'].toString();
      });
      print(totalBill);
    }
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
                      selectedIsFood = newValue;
                    },
                  );
                }),
            CustomButton(
                label: 'Check',
                onPressed: () {
                  if (dropdownValue == null) {
                    _showMyDialog();
                    print('error, select table number');
                  } else {
                    getBills(Uri.http(
                        '10.0.2.2:8000',
                        'api/bills/' +
                            dropdownValue[dropdownValue.length - 2] +
                            dropdownValue[dropdownValue.length - 1]));

                    // tableNo[tableNo.length - 2] + tableNo[tableNo.length - 1],

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
                    title: Text(
                      'Thank-you, Visit Again',
                    ),
                    subtitle: Text('Total Bill: \$'),
                  ),
                  Text(
                    '\$ ' + totalBill,
                    style: TextStyle(fontSize: 200),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
