import 'package:anupa_customers/builder/customButton.dart';
import 'package:anupa_customers/builder/orderListBuilder.dart';
import 'package:anupa_customers/screens/customersPage/components/selectedFood.dart';
import 'package:flutter/material.dart';

class SubmissionOrderPart extends StatefulWidget {
  @override
  SubmissionOrderPartState createState() => SubmissionOrderPartState();
}

class SubmissionOrderPartState extends State<SubmissionOrderPart> {
  String dropdownValue = 'One';
  //new Timer.periodic(oneSecond, (Timer t) => setState((){}));

  // Stream<int> _bids = (() async* {
  //   yield* Stream.periodic(Duration(seconds: 1), (int a) {
  //     //return selectedIsFood;
  //
  //     return a++;
  //   });
  // })();

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
                  DropdownButton(
                      value: dropdownValue,
                      icon: Icon(Icons.arrow_downward),
                      iconSize: 24,
                      elevation: 16,
                      style: TextStyle(color: Colors.deepPurple),
                      underline: Container(
                        height: 2,
                        color: Colors.deepPurpleAccent,
                      ),
                      items: <String>['One', 'Two', 'Free', 'Four']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
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
                        // orderList.add('value');
                        // print(orderList);
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
