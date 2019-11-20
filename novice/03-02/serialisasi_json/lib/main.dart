import 'package:flutter/material.dart';
import 'package:serialisasi_json/json2.dart';
import 'json1.dart';
import 'json_background.dart';
import './API/latihanApi.dart';
import 'json_listview.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/json1': (BuildContext context) => JsonSatu(),
        '/json2': (BuildContext context) => JsonDua(),
        '/json3': (BuildContext context) => JsonBackgound(),
        '/latihanApi': (BuildContext context) => LatihanAPI(),
        '/latihanJsonListView': (BuildContext context) => LatihanJsonListView(),

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
              judul: 'Json nested',
              routing: '/json2',
            ),
            MyButton(
              iconnya: Icon(Icons.offline_bolt),
              judul: 'Json Background',
              routing: '/json3',
            ),
            MyButton(
              iconnya: Icon(Icons.flash_on),
              judul: 'latihanApi',
              routing: '/latihanApi',
            ),
            MyButton(
              iconnya: Icon(Icons.flight),
              judul: 'latihanApi2',
              routing: '/latihanApi2',
            ),
            MyButton(
              iconnya: Icon(Icons.av_timer),
              judul: 'latihanJsonListView',
              routing: '/latihanJsonListView',
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
