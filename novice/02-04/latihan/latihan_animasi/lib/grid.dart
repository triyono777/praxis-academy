import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'hello',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hero'),
        ),
        body: Container(
          child: Center(
              child: GridView.count(
            crossAxisCount: 3,
            children: new List<Widget>.generate(16, (index) {
              return new GridTile(
                child: new Card(
                    color: Colors.blue.shade200,
                    child: new Center(
                      child: new Text('tile $index'),
                    )),
              );
            }),
          )),
        ),
      ),
    );
  }
}
