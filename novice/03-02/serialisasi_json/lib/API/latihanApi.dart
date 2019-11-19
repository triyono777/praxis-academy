import 'package:flutter/material.dart';

class LatihanAPI extends StatefulWidget {
  @override
  _LatihanAPIState createState() => _LatihanAPIState();
}

class _LatihanAPIState extends State<LatihanAPI> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Demo API'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text('Hasil Kembalian'),
              RaisedButton(
                onPressed: () {},
                child: Text('POST'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
