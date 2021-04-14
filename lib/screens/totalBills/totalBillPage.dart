import 'package:flutter/material.dart';

import 'components/body.dart';

class TotalBills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('See the Bills'),
      ),
      body:
          // Container(child: Text('hell')),
          Body(),
    );
  }
}
