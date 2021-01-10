import 'package:flutter/material.dart';

import 'halfPageBuilderinsideList.dart';

class HalfPageBuilder extends StatelessWidget {
  final String label;

  HalfPageBuilder({@required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            '$label',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: HalfPageUiBuilderInsideList(),
        ),
      ],
    );
  }
}
