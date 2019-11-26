import 'custom_button.dart';
import 'package:stye_division/style/custom_style.dart';
import 'package:division/division.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Txt(
            'Sample Button Style',
            style: CustomStyle.myTxtStyle.clone()..fontSize(25),
          ),
          backgroundColor: Colors.purpleAccent[200],
        ),
        backgroundColor: Colors.grey[200],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CustomButton(CustomStyle.mybuttonStyle),
              SizedBox(
                height: 30,
              ),
              CustomButton(CustomStyle.mybuttonStyle.clone()
                ..background.color(Colors.green[200])
                ..border(all: 3, color: Colors.green[900])
                ..rotate(4)),
            ],
          ),
        ),
      ),
    );
  }
}
