import 'dart:io';

main() {
  var a, b, c;

  stdout.write('masukkan nilai a: ');
  a = int.parse(stdin.readLineSync());

  stdout.write('masukkan nilai b: ');
  b = int.parse(stdin.readLineSync());

  if (b == 0) {
    //melempar ekspsi
    throw IntegerDivisionByZeroException();
  }

  c = a ~/ b;
  print('$a ~/ $b = $c');
}
