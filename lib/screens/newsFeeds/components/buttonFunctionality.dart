import 'package:anupa_customers/builder/customButton.dart';
import 'package:flutter/material.dart';

class ButtonFunctionality extends StatelessWidget {
  const ButtonFunctionality({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomButton(
          label: 'Call Us',
          onPressed: () {
            print('hello');
          },
        ),
        CustomButton(
          label: 'Email Us',
          onPressed: () {
            print('hello');
          },
        ),
        CustomButton(
          label: 'Website',
          onPressed: () {
            print('hello');
          },
        ),
      ],
    );
  }
}
