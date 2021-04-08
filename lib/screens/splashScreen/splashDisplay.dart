import 'dart:async';

import 'package:anupa_customers/screens/loginRegister/loginScreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    //if following data in retrieving results to be null then it throws error
    // AllFoods().getFoods();
    // AllTables().getTables();
    Timer(
        Duration(seconds: 5),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => LoginScreen())));
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        height: queryData.size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/bg.jpg"), fit: BoxFit.cover),
        ),
        child: Center(
            child: Image.asset(
          'images/anupaRestro.png',
          height: queryData.size.height / 1.8,
          width: queryData.size.width / 1.8,
        )),
      ),
    );
  }
}
