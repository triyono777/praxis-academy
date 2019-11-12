import 'package:flutter/material.dart';
import 'button_stateFull.dart';

void main() {
  runApp(MaterialApp(
    // home: MyAppStatelessWidget(),
    home: ButtonKeren(),
  ));
}

class MyAppStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('stateless widget'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            MyKartu(
                judul: Text(
                  'I Love Flutter',
                  style: TextStyle(fontSize: 20.0),
                ),
                icon: Icon(
                  Icons.favorite,
                  size: 40.0,
                  color: Colors.pink,
                )),
            MyKartu(
                judul: Text(
                  'I Love Donuts',
                  style: TextStyle(fontSize: 20.0),
                ),
                icon: Icon(
                  Icons.donut_small,
                  size: 40.0,
                  color: Colors.pink,
                )),
            MyKartu(
                judul: Text(
                  'I melihat mu',
                  style: TextStyle(fontSize: 20.0),
                ),
                icon: Icon(
                  Icons.remove_red_eye,
                  size: 40.0,
                  color: Colors.pink,
                )),
          ],
        ),
      ),
    );
  }
}

class MyKartu extends StatelessWidget {
  final Widget judul;
  final Widget icon;

  MyKartu({this.judul, this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 20.0),
      child: Card(
        child: Container(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[this.judul, this.icon],
          ),
        ),
      ),
    );
  }
}
