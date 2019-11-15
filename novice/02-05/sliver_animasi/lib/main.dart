import 'package:flutter/material.dart';
import 'silverAppBar.dart';
import 'SliverAppBar2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sliver Animasi',
      home: HomePage(),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/menu1': (BuildContext context) => SilverAppBarContoh(),
        '/menu2': (BuildContext context) => SilverAppBarContoh2(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kumpulan Sliver Animasi'),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Text('Hello'),
            MyButton(
              iconnya: Icon(Icons.ac_unit),
              routing: '/menu1',
              judul: 'SliverAppBar1',
            ),
            MyButton(
              iconnya: Icon(Icons.sentiment_satisfied),
              routing: '/menu2',
              judul: 'SliverAppBar2',
            ),
          ],
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final iconnya;
  final routing;
  final judul;
  MyButton({this.iconnya, this.routing, this.judul});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        FlatButton(
          child: Row(
            children: <Widget>[
              iconnya,
              Padding(
                padding: EdgeInsets.only(left: 10),
              ),
              Text(
                judul,
                style: TextStyle(fontSize: 25),
              )
            ],
          ),
          onPressed: () {
            Navigator.of(context).pushNamed(routing);
          },
        )
      ],
    );
  }
}
