main() async {
  var jeda = Duration(seconds: 1);
  var stream = Stream<int>.periodic(jeda, berubah);
  stream = stream.takeWhile(kondisi);

  await for (int hasil in stream) {
    print(hasil);
  }
}

int berubah(int nilai) {
  return (nilai + 1) * 2;
}

bool kondisi(int hasilnya) {
  return hasilnya <= 15;
}
