import 'dart:async';

Future<void> openFile(var filename) async {
  throw Exception('boom...!!');
}

main() async {
  try {
    var hasil = await openFile('filenya');
    print('sukses !... ');
  } catch (e) {
    print('muncul error: ${e.toString()}');
  }
}
