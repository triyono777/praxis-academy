main() {
  Mobil honda_z1 = Mobil('tipe mesin z1 ');
  return honda_z1;
}

class Mobil {
  var mesin;
  Mobil(var mesin) {
    this.mesin = mesin;
    print('mesinya adalah : ${mesin}');
  }
}
