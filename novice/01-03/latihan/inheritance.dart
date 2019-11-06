main() {
  var objek = Lingkaran();
  objek.luas_area();
}

class Bentuk {
  luas_area() {
    print('memanggil area dalam class Bentuk');
  }
}

class Lingkaran extends Bentuk {}
