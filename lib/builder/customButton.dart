import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({this.onPressed, @required this.label});
  final Function onPressed;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RaisedButton(
        onPressed: onPressed,
        color: Colors.orangeAccent,
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            label,
            style: TextStyle(
                fontSize: 20.0,
                fontFamily: 'ArchivoNarrow',
                color: Colors.black),
          ),
        ),
      ),
    );
  }
}
