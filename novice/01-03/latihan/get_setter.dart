main() {
  Murid anakTI = Murid();
  anakTI.nama_murid = 'Triyono';
  anakTI.umur_murid = 20;

  print(anakTI.nama_murid);
  print(anakTI.umur_murid);
}

class Murid {
  var nama, umur;

  get nama_murid {
    return nama;
  }

  get umur_murid {
    return umur;
  }

  set nama_murid(var nama) {
    this.nama = nama;
  }

  set umur_murid(var umur) {
    this.umur = umur;
  }
}
