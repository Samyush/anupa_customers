import 'package:anupa_customers/builder/customButton.dart';
import 'package:flutter/material.dart';

class SubmissionOrderPart extends StatelessWidget {
  const SubmissionOrderPart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text('drop box'),
            Text('Label'),
            //Text('submit Button'),
            CustomButton(
                label: 'Submit',
                onPressed: () {
                  // setState(() {
                  //   _showMyDialog();
                  // });
                }
                // _showMyDialog(),
                ),
          ],
        ),
      ],
    );
  }
}
