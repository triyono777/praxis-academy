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
  print(daftarYangLain);
}
