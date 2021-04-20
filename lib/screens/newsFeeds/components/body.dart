import 'package:flutter/material.dart';

import 'buttonFunctionality.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ButtonFunctionality(),
        Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Card(
                  elevation: 2.0,
                  color: Colors.white,
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                              "https://d2l930y2yx77uc.cloudfront.net/production/uploads/images/11316862/rectangle_large_type_2_bb3e0c5465b477ae3be9f5ccf09e17d0.jpeg",
                            ),
                            fit: BoxFit.cover)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const ListTile(
                          leading: Icon(Icons.album),
                          title: Text('New Data: '),
                          subtitle: Text('What Is: \$'),
                        ),
                        Text(
                          ' Food Is Hot, Hope you have been enjoying our special discounts!! ',
                          style: TextStyle(fontSize: 40),
                        ),
                        Text(
                          ' Well Well ',
                          style: TextStyle(fontSize: 40),
                        ),
                        Image.asset('images/anupaRestro.png'),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Card(
                  elevation: 2.0,
                  color: Colors.white,
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://d2l930y2yx77uc.cloudfront.net/production/uploads/images/11316862/rectangle_large_type_2_bb3e0c5465b477ae3be9f5ccf09e17d0.jpeg"),
                            fit: BoxFit.cover)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const ListTile(
                          leading: Icon(Icons.album),
                          title: Text('New Data: '),
                          subtitle: Text('What Is: \$'),
                        ),
                        Text(
                          ' Food Is Hot, Hope you have been enjoying our special discounts!! ',
                          style: TextStyle(fontSize: 40),
                        ),
                        Text(
                          ' Well Well ',
                          style: TextStyle(fontSize: 40),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Card(
                  elevation: 2.0,
                  color: Colors.white,
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://d2l930y2yx77uc.cloudfront.net/production/uploads/images/11316862/rectangle_large_type_2_bb3e0c5465b477ae3be9f5ccf09e17d0.jpeg"),
                            fit: BoxFit.cover)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const ListTile(
                          leading: Icon(Icons.album),
                          title: Text('New Data: '),
                          subtitle: Text('What Is: \$'),
                        ),
                        Text(
                          ' Food Is Hot, Hope you have been enjoying our special discounts!! ',
                          style: TextStyle(fontSize: 40),
                        ),
                        Text(
                          ' Well Well ',
                          style: TextStyle(fontSize: 40),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Card(
                  elevation: 2.0,
                  color: Colors.white,
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://d2l930y2yx77uc.cloudfront.net/production/uploads/images/11316862/rectangle_large_type_2_bb3e0c5465b477ae3be9f5ccf09e17d0.jpeg"),
                            fit: BoxFit.cover)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const ListTile(
                          leading: Icon(Icons.album),
                          title: Text('New Data: '),
                          subtitle: Text('What Is: \$'),
                        ),
                        Text(
                          ' Food Is Hot, Hope you have been enjoying our special discounts!! ',
                          style: TextStyle(fontSize: 40),
                        ),
                        Text(
                          ' Well Well ',
                          style: TextStyle(fontSize: 40),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
