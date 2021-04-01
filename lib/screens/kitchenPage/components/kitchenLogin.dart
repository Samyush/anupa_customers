import 'package:anupa_customers/builder/customButton.dart';
import 'package:anupa_customers/builder/streamer/kitchenLoginStreamer.dart';
import 'package:flutter/material.dart';

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
                Text('This page is for Kitchen Staffs'),
                Text('Here are our new Orders'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                setState(() {
                  Navigator.pop(context);
                });
              },
            ),
            TextButton(
              child: Text('OK'),
              onPressed: () {
                setState(() {
                  login = false;
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
          label: 'Get In',
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
