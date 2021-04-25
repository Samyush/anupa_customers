import 'package:anupa_customers/screens/splashScreen/splashDisplay.dart';
import 'package:anupa_customers/theme.dart';
import 'package:flutter/material.dart';
//error in table rendering

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Eatery',
      theme: theme(),
      home: SplashScreen(),
    );
  }
}
//no code day
