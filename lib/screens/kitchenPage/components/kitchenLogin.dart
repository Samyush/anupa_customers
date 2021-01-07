import 'package:anupa_customers/builder/customButton.dart';
import 'package:flutter/material.dart';

import 'body.dart';

class KitchenLogin extends StatefulWidget {
  @override
  _KitchenLoginState createState() => _KitchenLoginState();
}

class _KitchenLoginState extends State<KitchenLogin> {
  _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Cook Login'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('User Name:'),
                Text('Password:'),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Cancel'),
              onPressed: () {
                setState(() {
                  Navigator.pop(context);
                });
              },
            ),
            FlatButton(
              child: Text('OK'),
              onPressed: () {
                setState(() {
                  login = true;
                  Navigator.pop(context);
                });
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomButton(
          label: 'LOGIN',
          onPressed: () {
            setState(() {
              _showMyDialog();
            });
          }
          // _showMyDialog(),
          ),
    );
  }
}
