import 'package:anupa_customers/builder/streamer/orderStreamer.dart';
import 'package:anupa_customers/resources/appList.dart';
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
                  itemCount: ordersList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Card(
                        //color: Colors.white60,
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                'Order number: ' + ordersList[index]['orderNo'],
                                style: TextStyle(fontSize: 25),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text(
                                'Table number: ' + ordersList[index]['tableNo'],

                                //'Table number: 1',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text(
                                'Order item: ' + ordersList[index]['foodName'],
                                //'Food Item: Gurkha Ice',
                                style: TextStyle(fontSize: 20),
                              ),
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
