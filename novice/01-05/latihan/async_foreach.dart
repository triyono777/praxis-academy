import 'dart:async';
import 'dart:math';

main() async {
  await Future.forEach(
      [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
      (var angka) => isNomorPrima(angka).then((nilai) =>
          print('${angka} ${nilai ? " =" : " bukan"} bilangan prima ')));

  print('selesai');
}

Future<bool> isNomorPrima(var nomor) async {
  if (nomor == 1) return true;
  if (nomor == 2) return true;

  var nomorSqrt = sqrt(nomor);
  var limit = nomorSqrt.ceil();

  for (var hitung = 2; hitung <= limit; hitung++) {
    if (nomor % hitung == 0) return false;
  }
  return true;
}
