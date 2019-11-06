main() {
  StaticMemori.nomor = 39;
  StaticMemori.tampil();
}

class StaticMemori {
  static var nomor;
  static tampil() {
    print('nilai dari num adalah ${StaticMemori.nomor}');
  }
}
