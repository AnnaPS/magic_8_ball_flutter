import 'package:flutter/material.dart';
import 'dart:math';
import 'package:random_color/random_color.dart';

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    RandomColor _randomColor = RandomColor();
    return Container(
      color: _randomColor.randomColor(),
      child: Center(
        child: FlatButton(
          onPressed: () {
            setState(() {
              ballNumber = Random(DateTime.now().millisecond).nextInt(5) + 1;
            });
          },
          child: Image.asset("images/ball$ballNumber.png"),
        ),
      ),
    );
  }
}
