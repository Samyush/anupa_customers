import 'package:flutter/material.dart';

import 'constants.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "BrandonText",
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    // inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

TextTheme textTheme() {
  return TextTheme(
    bodyText1: TextStyle(color: kTextColor),
    bodyText2: TextStyle(color: kTextColor),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: Color(0xFFF5AB41),
    elevation: 03,
    brightness: Brightness.light,
    iconTheme: IconThemeData(color: Colors.indigo),
    textTheme: TextTheme(
      headline6: TextStyle(
        fontFamily: 'ArchivoNarrow',
        color: Colors.black,
        fontSize: 25,
      ),
    ),
  );
}
