import 'dart:io';

main() {
  var a, b, c;

  stdout.write('masukkan nilai a: ');
  a = int.parse(stdin.readLineSync());

  stdout.write('masukkan nilai b: ');
  b = int.parse(stdin.readLineSync());

  try {
    c = a ~/ b;
    print('$a ~/ $b = $c');
  } on IntegerDivisionByZeroException {
    print('SALAH: pembagi tidak boleh 0');
  }
}
