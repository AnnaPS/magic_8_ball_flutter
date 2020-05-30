import 'package:flutter/material.dart';

import 'ball.dart';

class BallPage extends StatelessWidget {
  const BallPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[400],
      appBar: AppBar(
        title: Text("Ask Me Anything"),
        backgroundColor: Colors.blue[800],
      ),
      body: Ball(),
    );
  }
}
