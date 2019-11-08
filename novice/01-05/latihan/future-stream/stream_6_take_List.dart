main() async {
  var jeda = Duration(seconds: 1);
  var stream = Stream<int>.periodic(jeda, berubah);
  stream = stream.take(5);
  List<int> data = await stream.toList();

  for (int hasil in data) {
    print(hasil);
  }
}

int berubah(int nilai) {
  return (nilai + 1) * 2;
}
