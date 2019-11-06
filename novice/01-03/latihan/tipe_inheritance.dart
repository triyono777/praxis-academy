main() {
  var objek = Daun();
  objek.nama = 'pisang';
  print(objek.nama);
}

class Akar {
  var nama;
}

class Batang extends Akar {}

class Daun extends Batang {}
