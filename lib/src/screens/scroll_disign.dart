import 'dart:ui';

import 'package:flutter/material.dart';

class ScrollDisign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xff5EE8C4), Color(0xff30BAD6)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.5, 0.5])),
        child: PageView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [ScreenMain(), ScreemTwo()],
        ),
      ),
    );
  }
}

class ScreenMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Stack(
          children: [Background(), MainContent()],
        ));
  }
}

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xff30BAD7),
        height: double.infinity,
        alignment: Alignment.topCenter,
        child: Image(image: AssetImage('assets/scroll-1.png')));
  }
}

class MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
        color: Colors.white, fontSize: 50.0, fontWeight: FontWeight.bold);

    return Container(
      //color: Colors.red,
      alignment: Alignment.center,
      margin: EdgeInsets.fromLTRB(0.0, 100.0, 0.0, 0.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('11°', style: textStyle),
          Text('Miércoles', style: textStyle),
          Expanded(child: Container()),
          Icon(
            Icons.keyboard_arrow_down,
            color: Colors.white,
            size: 100.0,
          )
        ],
      ),
    );
  }
}

class ScreemTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Background(),
        Container(
            alignment: Alignment.center,
            //color: Colors.red,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Bienvenidos',
                style: TextStyle(fontSize: 40.0),
              ),
            ))
      ],
    );
  }
}
