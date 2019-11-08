import 'dart:async';

main() async {
  var hasilStream = hitungStream(4);
  var jumlah = await penjumlahanStream(hasilStream);
  // print(jumlah);
}

Future<int> penjumlahanStream(Stream<int> stream) async {
  var jumlah = 0;
  await for (var nilai in stream) {
    // jumlah + nilai;
    print(nilai);
  }
  return jumlah;
}

Stream<int> hitungStream(int sampai) async* {
  for (int mulai = 1; mulai <= sampai; mulai++) {
    yield mulai;
    // return mulai;
  }
}
