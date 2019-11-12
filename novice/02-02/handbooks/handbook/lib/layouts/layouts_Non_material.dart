import 'package:flutter/material.dart';

class MyAppNonMaterial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Center(
        child: Text(
          'Layouts \nNon Material\n \ntidak ada BAR-nya',
          textDirection: TextDirection.ltr,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 32,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}
