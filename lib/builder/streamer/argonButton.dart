import 'package:argon_buttons_flutter/argon_buttons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class ArgonButt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //the required loading button
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: ArgonButton(
        height: 50,
        roundLoadingShape: true,
        width: 80,
        onTap: (startLoading, stopLoading, btnState) {
          if (btnState == ButtonState.Idle) {
            startLoading();
          } else {
            stopLoading();
          }
        },
        child: Text(
          "Text",
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700),
        ),
        loader: Container(
          padding: EdgeInsets.all(10),
          child: SpinKitDualRing(
            color: Colors.white,
            // size: 1000,
          ),
        ),
        borderRadius: 5.0,
        color: Color(0xFFfb4747),
      ),
    );
  }
}
