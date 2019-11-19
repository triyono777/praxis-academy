import 'package:flutter/material.dart';
import 'package:serialisasi_json/json2.dart';
import 'json1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/json1': (BuildContext context) => JsonSatu(),
        '/json2': (BuildContext context) => JsonDua(),
        // '/menu2': (BuildContext context) => SilverAppBarContoh2(),
        // '/menu3': (BuildContext context) => SliverGridContoh(),
        // '/menu4': (BuildContext context) => LatihanSliver(),
      },
      home: Scaffold(
        appBar: AppBar(
          title: Text('Serialisasi JSON'),
        ),
        body: ListView(
          children: <Widget>[
            MyButton(
              iconnya: Icon(Icons.account_balance),
              judul: 'Json 1',
              routing: '/json1',
            ),
            MyButton(
              iconnya: Icon(Icons.pages),
              judul: 'Json 2',
              routing: '/json2',
            ),
            MyButton(
              iconnya: Icon(Icons.offline_bolt),
              judul: 'Json 3',
              routing: '/json3',
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
