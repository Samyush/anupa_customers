import 'package:argon_buttons_flutter/argon_buttons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class ArgonButt extends StatelessWidget {
  final Function tap;
  ArgonButt({this.tap});
  @override
  Widget build(BuildContext context) {
    //the required loading button
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: ArgonButton(
        height: 50,
        roundLoadingShape: true,
        width: 80,
        onTap: tap,
        // onTap: (startLoading, stopLoading, btnState) {
        //   customersOrders.removeLast();
        //   if (btnState == ButtonState.Idle) {
        //     startLoading();
        //   } else {
        //     stopLoading();
        //   }
        // },
        child: Icon(
          Icons.delete_outlined,
          color: Colors.white,
        ),
        // Text(
        //   "Text",
        //   style: TextStyle(
        //       color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700),
        // ),
        loader: Container(
          padding: EdgeInsets.all(10),
          child: SpinKitDualRing(
            color: Colors.white,
            // size: 1000,
          ),
        ),
        borderRadius: 5.0,
        color: Color(0xFFAC8033),
      ),
    );
  }
}
