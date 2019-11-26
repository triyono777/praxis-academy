import 'package:division/division.dart';
import 'package:flutter/material.dart';

abstract class CustomStyle {
  static ParentStyle mybuttonStyle =
      ParentStyle(angleFormat: AngleFormat.degree)
        ..background.color(Colors.lightBlue[200])
        ..borderRadius(all: 60)
        ..border(all: 3, color: Colors.lightBlue[900])
        ..elevation(5)
        ..padding(horizontal: 20, vertical: 10)
        ..rotate(-5)
        ..ripple(true, splashColor: Colors.yellow);

  static TxtStyle myTxtStyle = TxtStyle()
    ..fontSize(30)
    ..bold()
    ..textColor(Colors.white);
}
