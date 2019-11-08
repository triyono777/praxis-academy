main() async {
  var jeda = Duration(seconds: 2);
  var stream = Stream<int>.periodic(jeda, berubah);
  stream = stream.take(5);

  stream.listen((iniHasil) {
    print(iniHasil);
  });
}

int berubah(int nilai) {
  return (nilai + 1) * 2;
}
