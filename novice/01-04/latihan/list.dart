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

  ///      basic operator list

  ///##### update

  // basicList.add(99); // menambah ke dalam list
  // basicList.addAll([88, 3, 4, 54, 5, 5, 4]); // menambah banyak ke list
  // basicList.insert(2, 77); // memasukkan angka 77 ke dalam index ke-2 , index dimulai  dari 0
  // basicList.insertAll(3, [55,6,7,4,4,3,3,]);// menambahkan banyak ke dalam list pada index 3

  // basicList[0] = 77; // update list , mereplace anggota list pada index 0 menjadi 77
  // basicList.replaceRange(1, 3, [97, 65, 77,88,77]); //update list,hanya akan mereplace index 1 sampai 3, apabila anggota nya masih banyak akan di masukkan setelahnya

  /// #########  Remove
  var basicList = [
    88,
    21,
    3,
    2,
    4,
  ];
  basicList.remove(3); //menghapus value / nilai bukan index
  // basicList.removeAt(2); // menghapus berdasarkan index
  // dynamic ygDihapus = basicList.removeAt(2);
  // print('nilai yang dihapus adalah ${ygDihapus}');

  // basicList.removeLast(); // hapus elemen list yg terakhir
  // basicList.removeRange(2, 4); // mengapus range 2 sampai 4, index ke 4 tidak terhapus
  // print(basicList);

  var listHapeS = ['sony', 'samsung'];
  var listHapeChina = ['xiaomi', 'huawei'];

  var listhape = [listHapeS, listHapeChina]; // menggabungkan list
  var listHapeGabungan = [
    'sony',
    'panasonic',
    'oppo',
    ...listHapeChina,
    listhape
  ]; //menggabungkan list ke urutan selanjutnya

  bool promo = true;
  var listHapePromo = [
    'sony',
    'xiaomi',
    if (promo) 'samsung'
  ]; //cara pemakaian if dalam list
  print('${listHapeGabungan},yang lagi promo: ${listHapePromo}');
}
