main() {
  Mobil mobile_satu = Mobil();
  mobile_satu.tampilTipe();
}

class Mobil {
  var mesin = 'tipe mesin E9976';

  tampilTipe() {
    print(mesin);
  }
}
