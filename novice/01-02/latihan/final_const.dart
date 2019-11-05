main() {
  //final digunakan untuk deklarasi yg belum atau sudah diketahui

  final name = 'Bob'; // Without a type annotation
  final String nickname = 'Bobby';
  final tgl = DateTime.now();

  //const digunakan untuk deklarasi yg sudah diketahui(dan harus diset dahulu)
  const lebar = 20;
  const panjang = 10;

  var luasbalok;

  luasbalok = panjang * lebar;

  print('luas balok=$luasbalok' + '  ' + '$tgl');
}
