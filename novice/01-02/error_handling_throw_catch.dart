import 'dart:io';

main() {
  var hari = ['senin', 'selasa', 'rabu', 'kamis', 'jumat', 'sabtu', 'minggu'];
  var index;

  stdout.write('masukkan nomor hari: ');
  index = int.parse(stdin.readLineSync());

  try {
    print('hari ke$index adalah ${hari[index - 1]}');
  } catch (e, s) {
    print('SALAH, tidak ada hari ke-$index');
    print('jenis eksepsi: $e');
    print('stacktrace: \n$s');
  }
}
