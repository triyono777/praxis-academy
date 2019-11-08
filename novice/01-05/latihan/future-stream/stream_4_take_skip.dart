main() async {
  var jeda = Duration(seconds: 1);
  var stream = Stream<int>.periodic(jeda, berubah);
  stream = stream.take(10);
  stream = stream.skip(2); //skip 2 langkah dari mulai

  await for (int hasil in stream) {
    print(hasil);
  }
}

int berubah(int nilai) {
  return (nilai + 1) * 2;
}
