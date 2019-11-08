main() async {
  var jeda = Duration(seconds: 2);
  var stream = Stream<int>.periodic(jeda, berubah);
  stream = stream.take(5);

  await for (int hasil in stream) {
    print(hasil);
  }
}

int berubah(int nilai) {
  return (nilai + 1) * 2;
}
