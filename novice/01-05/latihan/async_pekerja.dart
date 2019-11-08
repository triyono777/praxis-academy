main() async {
  print('mengambil data pekerja...');
  var cetak = await getPekerja(3);
  print('menerima ${cetak.nama} ${cetak.jabatan} dengan id# ${cetak.id}');
}

class Pekerja {
  var id;
  var nama;
  var jabatan;

  Pekerja(this.id, this.nama, this.jabatan);
}

Future<Pekerja> getPekerja(int id) async {
  await Future<Pekerja>.delayed(const Duration(seconds: 2));
  var pekerja1 = Pekerja(3, 'Triyono', 'manajer');
  return pekerja1;
}
