main() {
  Kalkulator kalkulator = Kalkulator();
  print('total harga: ${kalkulator.hitung_total()}');
  print('total diskon: ${kalkulator.hitung_diskon()}');
}

class Kalkukator_total {
  int hitung_total() {}
}

class Kalkutaor_diskon {
  int hitung_diskon() {}
}

class Kalkulator implements Kalkukator_total, Kalkutaor_diskon {
  int hitung_total() {
    return 1000;
  }

  int hitung_diskon() {
    return 500;
  }
}
