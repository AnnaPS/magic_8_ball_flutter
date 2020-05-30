import 'package:flutter/material.dart';
import 'dart:math';

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  static const colorA = 255; // Transparency (Alpha)
  int colorR, colorG, colorB = 127;
  int colorBackground = 4286545791; // Initial grey background
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(colorBackground),
      child: Center(
        child: FlatButton(
          onPressed: () {
            setState(() {
              ballNumber = Random(DateTime.now().millisecond).nextInt(5) +
                  1; // Gives a more random seed to the Random function
              colorR = Random().nextInt(26) *
                  10; // could have used Random().nextInt(256);
              colorG = Random().nextInt(26) * 10;
              colorB = Random().nextInt(26) * 10;
              colorBackground =
                  (((((colorA * 256) + colorR) * 256) + colorG) * 256) + colorB;
            });
          },
          child: Image.asset("images/ball$ballNumber.png"),
        ),
      ),
    );
  }
}
