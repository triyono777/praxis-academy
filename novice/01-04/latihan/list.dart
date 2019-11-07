main() {
  /// Fixed Length List
  /// pada deklarasi list jumlah anggota dari list di tuliskan
  var daftarAngka = List(5);
  daftarAngka[0] = 1;
  daftarAngka[1] = 5;
  daftarAngka[2] = 7;
  daftarAngka[3] = 3;
  daftarAngka[4] = 22;
  // print(daftarAngka);

  /// Growable List
  /// pada deklarasi List tidak di cantumkan jumlah listnya

  var daftarYangLain = List();
  daftarYangLain.add(8);
  daftarYangLain.add(3);
  daftarYangLain.add(6);
  daftarYangLain.add(88);
  // print(daftarYangLain);

  ///    element list

  var listPertama = List();
  listPertama.add(8);
  listPertama.add(3);
  listPertama.add(5);
  listPertama.add(11);

  // print('ini = ${listPertama.first} adalah list yang pertama'); //list yg pertama
  // print(listPertama.isEmpty); // berupa boolean , tru or false
  // print(listPertama.isNotEmpty); // berupa boolean , tru or false
  // print(listPertama.length); // panjang atau jumlah anggota list
  // print(listPertama.last); // list terakhir
  // print(listPertama.reversed); // mengubah urutan list terbalik
  // print(listPertama.single);  // hanya bisa digunakan apabila anggota list hanya 1.
}
