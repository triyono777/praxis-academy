import 'dart:collection';

main() {
  // HASH urutan didalam map maupun set di acak
  var akun = HashMap();
  akun['username'] = 'triyono037621';
  akun['email'] = 'triyono@triyono.com';
  akun['pasword'] = 'triyonoxyz79917';

  akun.addAll({'nama': 'triyono'});
  print('daftar akun= ${akun}');

  akun.remove('username');
  print('daftar akun= ${akun}');

  akun.clear();
  print('daftar akun= ${akun}');

  Set numberSet = new HashSet();
  numberSet.addAll([100, 200, 300]);
  print("Default implementation :${numberSet.runtimeType}");
  for (var no in numberSet) {
    print(no);
  }

  print("Printing hashet.. ${numberSet}");
  numberSet.remove(100);
  print("Printing hashet.. ${numberSet}");
  numberSet.clear();
  print("Printing hashet.. ${numberSet}");
}
