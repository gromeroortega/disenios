import 'package:flutter/material.dart';

class CustomBottomNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.pink,
        backgroundColor: Color.fromRGBO(55, 57, 84, 1),
        unselectedItemColor: Color.fromRGBO(116, 117, 152, 1),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today_outlined), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.graphic_eq_outlined), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_add_rounded), label: ''),
        ]);
  }
}
