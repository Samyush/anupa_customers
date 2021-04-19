import 'package:anupa_customers/appLists/customersPageList.dart';
import 'package:anupa_customers/appLists/kitchenPageList.dart';
import 'package:anupa_customers/builder/streamer/orderStreamer.dart';
import 'package:flutter/material.dart';

class KitchenHalfPageUiBuilderInsideList extends StatelessWidget {
  const KitchenHalfPageUiBuilderInsideList({
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
                                    'Order No: ' + newOrders[index]['orderNo'],
                                    style: TextStyle(fontSize: 25),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    'Table No: ' + newOrders[index]['tableNo'],

                                    //'Table number: 1',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    '' + newOrders[index]['foodName'],
                                    //'Food Item: Gurkha Ice',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    'quantity : ' +
                                        newOrders[index]['quantity'],
                                    //'Food Item: Gurkha Ice',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    '\$ bill : ' + newOrders[index]['bill'],
                                    //'Food Item: Gurkha Ice',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                              ],
                            ),
                            //following adds on update button in order lists
                            // ArgonButt(
                            //   tap: (startLoading, stopLoading, btnState) {
                            //     newOrders.removeAt(index);
                            //     if (btnState == ButtonState.Idle) {
                            //       startLoading();
                            //     } else {
                            //       stopLoading();
                            //     }
                            //   },
                            // ),
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
