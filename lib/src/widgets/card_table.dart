import 'dart:ui';
import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          _SimpleCard(
            color: Color(0xff3498eb),
            icon: Icons.grid_view,
            title: 'General',
          ),
          _SimpleCard(
            color: Color(0xff8f34eb),
            icon: Icons.directions_bus,
            title: 'Transport',
          ),
        ]),
        TableRow(children: [
          _SimpleCard(
            color: Color(0xffeb2dcb),
            icon: Icons.shopping_bag,
            title: 'Shopping',
          ),
          _SimpleCard(
            color: Color(0xffe68e29),
            icon: Icons.receipt,
            title: 'Bills',
          ),
        ]),
        TableRow(children: [
          _SimpleCard(
            color: Color(0xff789de8),
            icon: Icons.movie_creation,
            title: 'Entretainment',
          ),
          _SimpleCard(
            color: Color(0xff2db009),
            icon: Icons.storefront,
            title: 'Grocery',
          ),
        ]),
      ],
    );
  }
}

class _SimpleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String title;

  const _SimpleCard({Key key, this.icon, this.color, this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CardBlurBackground(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          foregroundColor: Colors.white,
          backgroundColor: this.color,
          child: Icon(
            this.icon,
            size: 30.0,
          ),
          maxRadius: 30.0,
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(
          this.title,
          style: TextStyle(color: this.color),
        )
      ],
    ));
  }
}

class CardBlurBackground extends StatelessWidget {
  const CardBlurBackground({
    Key key,
    @required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: ClipRRect(
        //Recorta
        borderRadius: BorderRadius.circular(20.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            // margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            height: 170.0,
            decoration: BoxDecoration(
                color: Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20)),
            child: child,
          ),
        ),
      ),
    );
  }
}
