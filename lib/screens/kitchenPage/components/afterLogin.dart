import 'package:anupa_customers/resources/appList.dart';
import 'package:flutter/material.dart';

class AfterLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            children: [
              Container(
                color: Colors.white54,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Text(
                        'New Orders',
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      // Submit_Button(
                      //   label: 'Start',
                      //   onPressed: () {
                      //     orderList.forEach((orders) {
                      //       newOrders.add(orders);
                      //     });
                      //     print(newOrders);
                      //   },
                      // ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListView.builder(
                        itemCount: orderList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Card(
                              //color: Colors.white60,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      orderList[index],
                                      style: TextStyle(fontSize: 25),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
            child: Container(
          color: Colors.amber,
        ))
      ],
    );
  }
}
