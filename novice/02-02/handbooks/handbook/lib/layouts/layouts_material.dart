import 'package:flutter/material.dart';

class MyAppMaterial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter demo'),
        ),
        body: Center(
          child: Text(
            'Layouts \nMaterial\n \n ada BAR nya',
            style: TextStyle(fontSize: 30.0),
          ),
        ),
      ),
    );
  }
}
