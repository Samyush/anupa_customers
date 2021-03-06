import 'package:anupa_customers/appLists/customersPageList.dart';
import 'package:anupa_customers/builder/argonButton.dart';
import 'package:anupa_customers/builder/streamer/orderStreamer.dart';
import 'package:argon_buttons_flutter/argon_buttons_flutter.dart';
import 'package:flutter/material.dart';

class HalfPageUiBuilderInsideList extends StatelessWidget {
  const HalfPageUiBuilderInsideList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Object>(
        stream: OrderStreamer().stream,
        builder: (context, snapshot) {
          return Container(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView.builder(
                  itemCount: customersOrders.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Card(
                        //color: Colors.white60,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              // mainAxisAlignment: MainAxisAlignment.,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    'Order No: ' +
                                        customersOrders[index]['orderNo'],
                                    style: TextStyle(fontSize: 25),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    'Table No: ' +
                                        customersOrders[index]['tableNo'],

                                    //'Table number: 1',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    '' + customersOrders[index]['foodName'],
                                    //'Food Item: Gurkha Ice',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    'quantity : ' +
                                        customersOrders[index]['quantity'],
                                    //'Food Item: Gurkha Ice',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    '\$ bill : ' +
                                        customersOrders[index]['bill'],
                                    //'Food Item: Gurkha Ice',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                              ],
                            ),
                            //following adds on update button in order lists
                            ArgonButt(
                              tap: (startLoading, stopLoading, btnState) {
                                customersOrders.removeAt(index);
                                if (btnState == ButtonState.Idle) {
                                  startLoading();
                                } else {
                                  stopLoading();
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          );
        });
  }
}
