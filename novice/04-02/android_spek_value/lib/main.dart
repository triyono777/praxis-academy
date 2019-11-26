import 'package:flutter/material.dart';
import 'package:device_info/device_info.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Center(
          child: Text('halooo'),
        ),
      ),
    );
  }
}
