import 'dart:async';

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
  //new Timer.periodic(oneSecond, (Timer t) => setState((){}));

  Stream<int> _bids = (() async* {
    yield* Stream.periodic(Duration(seconds: 1), (int a) {
      //return selectedIsFood;

      return a++;
    });
  })();

  // Stream<String> _bid = (() async* {
  //   final _controller = StreamController<String>();
  //
  //   Timer.periodic(Duration(seconds: 1), (timer) {
  //     _controller.add(selectedIsFood);
  //   });
  //
  //   //Stream<String> get stream => _controller.stream;
  // })();

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
          return Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text('drop box'),
                  Text(selectedIsFood),
                  //Text(snapshot.data.toString()),
                  //Text(selectedItem),

                  //Text('submit Button'),
                  CustomButton(
                      label: 'Submit',
                      onPressed: () {
                        setState(() {
                          //selectedItem = 'hero';
                        });
                        OrderListBuilder().listAdder(selectedIsFood);
                        orderList.add('value');
                        print(orderList);
                      }
                      // _showMyDialog(),
                      ),
                ],
              ),
            ],
          );
        });
  }
}
