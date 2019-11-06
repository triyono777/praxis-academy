main() {
  Kadal kadal = Kadal();
  kadal.keterangan();
  kadal.manjat();
}

class Hewan {
  keterangan() => print('hewan secara umum');
}

class Reptil {
  bool bisaManjat = true;
  manjat() => print('bisa manjat');
  keterangan() => print('ini hewan reptil');
}

class Kucing extends Hewan {
  bool punyaDuaKuping = true;
  ngeong() => print('meong....');

  @override
  keterangan() {
    print('ini kucing');
    return super.keterangan();
  }
}

class Kadal extends Hewan with Reptil {
  bool punyaEkor = true;

  @override
  keterangan() {
    print('ini kadal');
    return super.keterangan();
  }
}
