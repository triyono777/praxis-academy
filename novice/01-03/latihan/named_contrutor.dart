main() {
  Mobil_dua honda = Mobil_dua.tipeMesin('E778G8');
  Mobil_dua honda2 = Mobil_dua();

  print(honda2);
}

/// Named Constructor
/// Nama_class.nama_constructor(parameternya){isi perintah}

class Mobil_dua {
  Mobil_dua() {
    print('mesin tidak bertipe');
  }

  Mobil_dua.tipeMesin(var mesin) {
    print('mesinnya bertipe : ${mesin}');
  }
}
