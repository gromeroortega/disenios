import 'package:flutter/material.dart';

class BasicDisign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Diseño Básico'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Image(image: AssetImage('assets/imagenes.png')),
            Title(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButtons(icon: Icons.call, text: 'Call'),
                IconButtons(icon: Icons.near_me, text: 'Route'),
                IconButtons(icon: Icons.share, text: 'Share')
              ],
            ),
            Container(
              margin: EdgeInsets.all(28.0),
              child: Text(
                  'Aliquip excepteur qui quis dolor quis sint. Nisi culpa ut magna ullamco enim aute ullamco exercitation in nostrud. Ut sunt eu proident ad id commodo non quis sit et dolore sit. Ut consectetur sunt quis ut sunt anim ullamco exercitation voluptate consectetur fugiat. Aliqua anim aliquip elit fugiat labore cillum consectetur ex ex commodo amet exercitation nisi occaecat. Qui do laborum consectetur quis nulla anim exercitation. Cillum officia fugiat ex enim qui in magna consequat elit ea elit amet.',
                  textAlign: TextAlign.justify),
            )
          ],
        ),
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30.0),
      child: Row(
        //Dentro del row un mainAxisAlignment es horizontal y el crossAxisAlignment es vertical
        children: [
          Column(
            //Dentro del columna un mainAxisAlignment es vertical y el crossAxisAlignment es horizontal
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('En una comoda de ciudad comoda',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text(
                'Calcetin con rombos man',
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
          Expanded(child: Container()),
          Icon(
            Icons.star,
            color: Colors.red,
            size: 25.0,
          ),
          Text(
            '41',
            style: TextStyle(fontSize: 16.0),
          )
        ],
      ),
    );
  }
}

class IconButtons extends StatelessWidget {
  final IconData icon;
  final String text;
  const IconButtons({
    Key key,
    this.icon,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          Icon(
            this.icon,
            color: Colors.blue,
          ),
          Text(
            this.text,
            style: TextStyle(color: Colors.blue),
          )
        ],
      ),
    );
  }
}
