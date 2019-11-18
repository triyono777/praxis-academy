import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
              backgroundColor: Colors.amber,
              onPressed: () {},
            ),
            SizedBox(
              width: 10,
            ),
            FloatingActionButton(
              backgroundColor: Colors.lightBlue,
              onPressed: () {},
            ),
          ],
        ),
        appBar: AppBar(
          title: Text('Bloc dengan Library/Package'),
        ),
        body: Center(
          child: AnimatedContainer(
            duration: Duration(microseconds: 500),
            height: 100,
            width: 100,
            color: Colors.amber,
          ),
        ),
      ),
    );
  }
}
