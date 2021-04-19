import 'package:flutter/material.dart';

import 'buttonFunctionality.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        //

        Expanded(
          child: Container(
            // height: queryData.size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/wallPP.jpg"), fit: BoxFit.cover),
            ),

            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    elevation: 2.0,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ButtonFunctionality(),
                        const ListTile(
                          leading: Icon(Icons.album),
                          title: Text('New Data: '),
                          subtitle: Text('What Is: \$'),
                        ),
                        Text(
                          ' Food Is Hot, Hope you have been enjoying our special discounts!! ',
                          style: TextStyle(fontSize: 40),
                        ),
                        Text(
                          ' Well Well ',
                          style: TextStyle(fontSize: 40),
                        ),
                        Text(
                          ' 3 ',
                          style: TextStyle(fontSize: 40),
                        ),
                        Text(
                          ' 4 ',
                          style: TextStyle(fontSize: 40),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
