import 'package:disenios/src/screens/basic_disign.dart';
import 'package:disenios/src/screens/scroll_disign.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños Flutter',
      initialRoute: 'scroll_disign',
      routes: {
        'basic_disign': (BuildContext context) => BasicDisign(),
        'scroll_disign': (BuildContext context) => ScrollDisign()
      },
    );
  }
}
