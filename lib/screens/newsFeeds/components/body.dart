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

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset(
                    'images/anupaRestro.png',
                    // height: queryData.size.height / 1.8,
                    // width: queryData.size.width / 1.8,
                  ),
                ),
                //
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: ButtonFunctionality(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
