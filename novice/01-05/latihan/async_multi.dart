import 'dart:async';

main() async {
  print('mulai');
  var satu = await pertamaAsync();
  print(satu);
  var dua = await keduaAsync();
  print(dua);
  var tiga = await ketigaAsync();
  print(tiga);
  print('selesai');
}

Future<String> pertamaAsync() async {
  await Future<String>.delayed(const Duration(seconds: 2));
  return 'pertama';
}

Future<String> keduaAsync() async {
  await Future<String>.delayed(const Duration(seconds: 2));
  return 'kedua';
}

Future<String> ketigaAsync() async {
  await Future<String>.delayed(const Duration(seconds: 2));
  return 'ketiga';
}
