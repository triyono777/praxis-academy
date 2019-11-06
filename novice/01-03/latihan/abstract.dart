main() {
  Persegi persegi = Persegi();
  return persegi.hitungLuas();
}

abstract class BangunDatar {
  hitungLuas();
}

class Persegi extends BangunDatar {
  var panjang = 20;
  var lebar = 37;
  @override
  hitungLuas() {
    var luas = panjang * lebar;
    print(' luas persegi: ${luas}');
  }
}
