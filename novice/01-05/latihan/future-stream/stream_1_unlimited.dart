main() async {
  var jeda = Duration(seconds: 2);
  // var stream = Stream<int>.periodic(jeda, nilaiCallback);
  var stream = Stream<int>.periodic(jeda, nilaiCallback);

  await for (int hasil in stream) {
    print(hasil);
  }
}

int nilaiCallback(int nilai) {
  return (nilai + 1) * 2;
}
