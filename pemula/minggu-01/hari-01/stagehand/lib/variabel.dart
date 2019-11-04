void main() {
  var name = 'voyager I';
  var year = 1997;
  var antennaDiameter = 3.7;
  var flyObjects = ['jupiter', 'Saturn', 'Uranus', 'Neptune'];

  if (year >= 2001) {
    print('21 century');
  } else if (year >= 1901) {
    print('20 century');
  }

  for (var object in flyObjects) {
    print(object);
  }

  for (int month = 1; month <= 12; month++) {
    print(month);
  }

  while (year < 2016) {
    year += 1;
  }
}
