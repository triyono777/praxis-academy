import 'dart:io';
import 'xmain.dart';

// void main() {
//   var voyager = Spacecraft('yoga1', DateTime(1998, 7, 2));
//   voyager.describe();
// }

class Spacecraft {
  String name;
  DateTime launchDate;

//membuat constructor
  Spacecraft(this.name, this.launchDate) {
    ;
  }

//membuat constructor dengan default atau null
  Spacecraft.unlaunced(String name) : this(name, null);

  int get launchYear => launchDate?.year;

  void describe() {
    print('spacecraft: $name');
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('launched : $launchYear ($years years ago');
    } else {
      print('unlaunched');
    }
  }
}
