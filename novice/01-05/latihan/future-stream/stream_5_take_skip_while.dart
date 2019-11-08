main() async {
  var jeda = Duration(seconds: 1);
  var stream = Stream<int>.periodic(jeda, berubah);
  stream = stream.take(10);
  stream = stream.skipWhile(kondisi);

  await for (int hasil in stream) {
    print(hasil);
  }
}

int berubah(int nilai) {
  return (nilai + 1) * 2;
}

bool kondisi(int hasilnya) {
  return hasilnya < 5;
}
