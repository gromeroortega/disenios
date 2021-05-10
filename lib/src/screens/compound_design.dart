import 'package:disenios/src/widgets/background.dart';
import 'package:disenios/src/widgets/card_table.dart';
import 'package:disenios/src/widgets/custom_bottom_navigation.dart';
import 'package:disenios/src/widgets/titles.dart';
import 'package:flutter/material.dart';

class CompoundDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [Background(), _HomoBody()],
        ),
        bottomNavigationBar: CustomBottomNavigator(),
      ),
    );
  }
}

class _HomoBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Titles
          Titles(),
          //Card Table
          CardTable()
        ],
      ),
    );
  }
}
