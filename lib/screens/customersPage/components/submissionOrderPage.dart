import 'package:anupa_customers/builder/customButton.dart';
import 'package:anupa_customers/builder/orderListBuilder.dart';
import 'package:anupa_customers/resources/appList.dart';
import 'package:anupa_customers/screens/customersPage/components/selectedFood.dart';
import 'package:flutter/material.dart';

class SubmissionOrderPart extends StatefulWidget {
  @override
  SubmissionOrderPartState createState() => SubmissionOrderPartState();
}

class SubmissionOrderPartState extends State<SubmissionOrderPart> {
  String isVals = 'jpt';

  void changingValue(String value) async {
    isVals = value;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text('drop box'),
            Text(selectedIsFood),
            Text(isVals),

            //Text('submit Button'),
            CustomButton(
                label: 'Submit',
                onPressed: () {
                  setState(() {
                    isVals = 'hero';
                  });
                  OrderListBuilder().listAdder();
                  orderList.add('value');
                  print(orderList);
                }
                // _showMyDialog(),
                ),
          ],
        ),
      ],
    );
  }
}
