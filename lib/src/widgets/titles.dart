import 'dart:ui';

import 'package:flutter/material.dart';

class Titles extends StatelessWidget {
  const Titles({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 40.0, horizontal: 30.0),
      width: 200.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Classify transaction',
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text('Classify transaction into a particular category',
              style: TextStyle(fontSize: 16.0, color: Colors.white)),
        ],
      ),
    );
  }
}
