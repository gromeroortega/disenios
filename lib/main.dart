import 'package:disenios/src/screens/basic_design.dart';
import 'package:disenios/src/screens/compound_design.dart';
import 'package:disenios/src/screens/scroll_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Diseños Flutter',
      initialRoute: 'compound_design',
      routes: {
        'basic_design': (BuildContext context) => BasicDesign(),
        'scroll_design': (BuildContext context) => ScrollDesign(),
        'compound_design': (BuildContext context) => CompoundDesign()
      },
    );
  }
}
