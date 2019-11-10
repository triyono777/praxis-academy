main() {
  // ************* NUMBERS *******************
  var angka = 9; // tipedata angka
  assert(angka == 9, 'benar');
  /** "assert" digunakan untuk mengecek nilai sesuai atau tidak,
 * penulisanya =  assert(angka == 9, 'benar');
 * penggunaanya di dart = dart --enable-asserts file_yg _di_run.dart 
 */

  var dobel = 2.5; // // tipedata double
  var nama = 'budi'; //tipe data string

  var satu = int.parse('1'); //mengubah string ke integer
  var dobel2 = double.parse('2.6'); //merubah string ke double

  var gantiString = 5.toString(); // dari int diubah ke string
  var gantiDobel = 2.8.toString(); //dari dobel ke string
  var gantiDobel2 =
      2.89988777.toStringAsFixed(3); //dari dobel ke string dibulatkan

  assert(gantiDobel2 != 2.90, 'nilai masih salah');

  // ************* STRINGS *******************

  var kalimat1 =
      'ini kalimat panjang sekali \" ok \n  enter ya $gantiDobel2 $gantiString $gantiString $gantiDobel';
  var kalimat2 = "kalimatnya panjang sekali dua kali lipat";

  /*untuk memasukkan petik ' atau " dalam string gunakan backslash "\" 
       atau \n untuk enter
      */

  var kalimatnya = ''' 
      ini baris pertama
      ini baris kedua
      ini baris ketiga ''';
  print(kalimatnya);
  var besarsemua = 'ini besar'.toUpperCase();
  assert(besarsemua == 'INI BESAR');
  var kecil = 'iNi Kecil SEmua'.toLowerCase();
  assert(kecil == 'ini kecil semua');
  // untuk merubah string ke BESAR SEMUA (UPPERCASE) , kecil semua(lowercase)

  // ************* BOOELANS *******************
  // booleans hanya true or false

  // mengecek apakah namaKosong itu kosong
  var namaKosong = '';
  assert(namaKosong.isEmpty);

// cek hp apakah 0
  var hp = 0;
  assert(hp <= 0);

// Check for null.
  var unicorn;
  assert(unicorn == null);

// Check for NaN.
  var iMeantToDoThis = 0 / 0;
  assert(iMeantToDoThis.isNaN);

  /// ************* LISTS *******************
  /// list terdiri dari beberapa data atau dalam array
  /// array dimulai dari 0
  var daftar = [1, 2, 3];
  assert(daftar.length == 3);
  assert(daftar[1] == 2);
  var constDaftar = const [
    1,
    2,
    3,
    4
  ]; //penggunaan const pada list sebelum tanpa []
  assert(constDaftar[0] == 1);

  var daftarSatu = [1, 2, 5, 6, 7, 8, 9];
  var daftarDua = [
    3,
    4,
    5,
    ...daftarSatu
  ]; // untuk menambahkan daftarSatu ke dalam DaftarDua pakai "..."
  assert(daftarDua.length == 10);

  var daftarbarang;
  var belanjaan = [
    1,
    2,
    ...?daftarbarang
  ]; //untuk mengatasi isi list kosong pakai "?" setelah "..."
  assert(belanjaan.length == 2);

  bool berpergian = true;
  var peralatanKantor = [
    'bolpen',
    'kertas',
    if (berpergian) 'koper',
  ]; // list dengan if else didalamnya
  assert(peralatanKantor != 'bolpen, kertas, koper', 'tidak berpergian');

  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1'); //untuk penggunaan for

  /// ************* SETS *******************
  /// pemakaian sets menggunakan kurung kurawal {}
  /// aturan sets adalah unik artinya tidak ada yg boleh sama
  /// apabila da yg sama maka akan di jadikan satu
  var merkHape = {
    'samsung',
    'xiaomi',
    'sony',
    'sony'
  }; //hasil nya {samsung, xiaomi, sony}

  var tambahMerk = <String>{}; // contoh penggunaan List yg lain

  tambahMerk.add('OPPO');
  merkHape.add('VIVO'); //untuk menambahkan item ke merkHape
  tambahMerk.addAll(merkHape); // menambahkan merkHape ke dalam tambahMerk

//************ RUNES ***********
  ///untuk menambahkan icon-icon
  /// format penulisanya kurung kurawal dengan digit dari icon {1f47b}
  var clapping = '\u{1f44f}'; // icon tepuk tangan = \u{1f44f}

  print(clapping);
  print(clapping.codeUnits);
  print(clapping.runes.toList());

  Runes input = new Runes(
      '\u2665  \u{1f605}  \u{1f60e}  \u{1f47b}  \u{1f596}  \u{1f44d} ');
  print(new String.fromCharCodes(input)); //menampilkan icon2 yg ada dalam input

  //************************ SYMBOLS******** */
//untuk memberi Symbol("")
  var iniSimbol = #iniAdalahSimbol; // hasilnya= Symbol("iniAdalahSimbol")
  print(iniSimbol);
}
