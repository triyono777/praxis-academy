main() {
  Mobil toyota = Mobil('mesin E66GT');
  print(toyota);

  Mobil_dua honda = Mobil_dua.tipeMesin('E778G8');
  print(honda);
}

class Mobil {
  Mobil(var mesin) {
    print(mesin);
  }
}

// Named Constructor

class Mobil_dua {
  Mobil_dua() {
    print('tanpa parameter constructor');
  }

  Mobil_dua.tipeMesin(var mesin) {
    print('mesinnya bertipe : ${mesin}');
  }
}
