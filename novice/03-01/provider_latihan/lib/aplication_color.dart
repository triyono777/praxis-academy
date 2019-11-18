import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AplicationColor with ChangeNotifier {
  bool _isLightBlue = true;
  bool get isLightBlue => _isLightBlue;
  set isLightBlue(bool nilaiBaru) {
    _isLightBlue = nilaiBaru;
    notifyListeners();
  }

  Color get warna => (_isLightBlue) ? Colors.lightBlue : Colors.redAccent;
}
