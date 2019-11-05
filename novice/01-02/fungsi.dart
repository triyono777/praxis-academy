main() {
  //penulisan fungsi tanpa parameter
  merkHape() {
    return 'Sony, Samsung';
  }

  assert(merkHape() == 'Sony, Samsung');

// penulisan fungsi dengan parameter
  String namaMobil(String nama) {
    return 'nama mobil = $nama';
  }

  assert(namaMobil('pajero') == 'nama mobil = pajero');

  // print(merkHape());

  // print(namaMobil('alpard')); //memanggil fungsi dengan parameter

  String selamat(String waktu, [String nama]) {
    // print("Selamat $waktu" ?? "Selamat $waktu, $nama");
    return 'Selamat $waktu , $nama';
  } // fungsi dengan opsional, menggunakan []

  assert(selamat('siang', 'Triyono') == 'Selamat siang , Triyono');

  // print(selamat(
  //     'pagi')); // tanpa paramenter kedua , hasilnya akan null pada parameter kedua
  // print(selamat('siang', 'Triyono')); //dengan parameter ke dua

  String makananSehatku(String ucapan, {String makanan, String minuman}) {
    return '$ucapan makanan = $makanan dan minuman = $minuman';
  } // fungsi dengan paramater opsional ,berlabel/nama

  assert(makananSehatku('mari', makanan: 'nasi', minuman: 'susu') ==
      'mari makanan = nasi dan minuman = susu');

  String makananSehat(String ucapan,
      {String makanan, String minuman = 'susu'}) {
    return '$ucapan makanan =  $makanan dan minuman = $minuman';
  } // fungsi dengan paramater opsional ,berlabel/nama  ,dengan default value pada minuman

  print(makananSehat('mari makan', makanan: 'nasi'));

  //anonymous function /fungsi tanpa nama

  var listNama = ["Triyono", "Doe", "Smith", "Alex"];
  listNama.forEach((item) {
    print('${listNama.indexOf(item)}: $item');
  });
}
