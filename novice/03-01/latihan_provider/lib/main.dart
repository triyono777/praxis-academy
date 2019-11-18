import 'package:flutter/material.dart';
import 'lat_provider.dart';
import 'multi_profider.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan Provider'),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MyButton(
                  iconnya: Icon(Icons.color_lens),
                  routing: '/menu1',
                  judul: 'Provider',
                ),
                MyButton(
                  iconnya: Icon(Icons.multiline_chart),
                  routing: '/menu2',
                  judul: 'MultiProvider',
                ),
                MyButton(
                  iconnya: Icon(Icons.ac_unit),
                  routing: '/menu1',
                  judul: 'SliverAppBar1',
                ),
              ],
            ),
          ),
        ),
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/menu1': (BuildContext context) => LatihanProvider(),
        '/menu2': (BuildContext context) => MultiProvider(),
      },
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
