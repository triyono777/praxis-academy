main() {
  Anak anaknya = Anak();
  anaknya.pesan('ini pesan dari anaknya ');
}

class Orangtua {
  var isi_pesan_ortu_asli = 'ini adalah pesan dari class Orangtua asli';
  pesan(var isiPesanA) {
    print('ortu: ${isiPesanA}');
  }
}

class Anak extends Orangtua {
  @override
  pesan(var isipesanB) {
    // pesan merupakan fungsi yg harus ada , karena meng extend OrangTua
    print('anak: ${isipesanB}'); // isi fungsi yg dibuat di anak
    super.pesan(
        'pesan ini dari ortu'); // cara mengakses fungsi pesan pada class orangTua
    print('${isi_pesan_ortu_asli}'); // mengakses variabel dari class orangtua
  }
}
