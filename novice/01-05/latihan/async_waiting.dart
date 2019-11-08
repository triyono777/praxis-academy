import 'dart:math';
import 'dart:async';

main() async {
  Future.wait([getRandomNomor(), getRandomNomor(), getRandomNomor()])
      .then((List<dynamic> hasil) {
    cariNomorTerkecilDiDaftar(hasil);
  });
}
// main() async =>
//     Future.wait([getRandomNomor(), getRandomNomor(), getRandomNomor()])
//         .then((List<dynamic> hasil) => cariNomorTerkecilDiDaftar(hasil));

Future<dynamic> getRandomNomor() async {
  var random = Random();
  return random.nextInt(100);
}

cariNomorTerkecilDiDaftar(List<dynamic> list) {
  print('semua member :');
  // list.forEach((cetaklist) => print(cetaklist));
  list.forEach((cetaklist) {
    print(cetaklist);
  });
  list.sort();
  var terbesar = list.last;

  print('Nomor terbesar dari random # yg di generate adalah : ${terbesar}');
}
