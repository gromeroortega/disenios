import 'dart:math';

import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final boxDecoration = BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [
        0.2,
        0.8
      ],
          colors: [
        Color.fromRGBO(46, 48, 95, 1),
        Color.fromRGBO(
          32,
          35,
          51,
          15,
        ),
      ]));

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(decoration: boxDecoration),
        Positioned(top: -100, left: 5, child: _PinkBox()),
      ],
    );
  }
}

class _PinkBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        width: 360.0,
        height: 360.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80.0),
            gradient: LinearGradient(colors: [
              Color.fromRGBO(236, 98, 188, 1),
              Color.fromRGBO(251, 142, 172, 1)
            ])),
      ),
    );
  }
}
