main() {
  // ########## MAP ###########
  //terdiri dari {key: value}

  var dataLogin = {'username': 'akun1', 'password': 'akunPassord'};
  dataLogin['email'] = 'user-email@gmail.com'; // menambahkan item ke map
  // print(dataLogin);

  //  MAP constructor
  var dataPribadi = Map(); // membuat MAP kosongan dan menambahnya
  dataPribadi['nama'] = 'triyono';
  dataPribadi['alamat'] = 'sragen';

  // MAP properties
  print(
      dataPribadi.keys); // hanya menampilkan key nya saja yaitu nama dan alamat
  print(dataPribadi
      .values); // hanya menampilkan value nya saja yaitu triyono dan sragen
  print(dataPribadi.length); // menampilkan jumlah data
  print(dataPribadi.isEmpty); // menampilkan kosong atau tidak hasilnya false
  print(dataPribadi.isNotEmpty); // menampilkan kosong atau tidak hasilnya true

  // MAP fungsi

  dataPribadi.addAll(
      {'rumah': 'sragen', 'kantor': 'solo'}); // menambahkan elemen ke MAP
  dataPribadi.addAll({
    'nama': 'agung',
    'alamat': 'solo'
  }); // apabila nama key nya sama makan akan me replace
  print(dataPribadi);

  // dataPribadi.clear(); // untuk menhapus semua isi
  // print(dataPribadi);

  var hapusNama = dataPribadi
      .remove('nama'); // menghapus key beserta value nya (yg ditulis key nya)
  print(dataPribadi);
  print(
      'yang dihapus adalah ${hapusNama}'); //yang ditampilkan adalah value dari key yg dihapus

  dataPribadi.forEach((k, v) =>
      print('${k},${v}')); // untuk menuliskan masing2 key dan valuenya
}
