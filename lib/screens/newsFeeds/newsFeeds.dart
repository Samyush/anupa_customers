import 'package:flutter/material.dart';

import 'components/body.dart';

class NewsFeeds extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to The Eatery'),
      ),
      body: Body(),
    );
  }
}
