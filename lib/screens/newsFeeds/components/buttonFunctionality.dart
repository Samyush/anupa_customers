import 'package:anupa_customers/builder/customButton.dart';
import 'package:anupa_customers/screens/loginRegister/loginScreen.dart';
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
          label: 'LogOut',
          onPressed: () {
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                    builder: (BuildContext context) => LoginScreen()),
                (Route<dynamic> route) => false);
            print('redirect to login');
          },
        ),
      ],
    );
  }
}
