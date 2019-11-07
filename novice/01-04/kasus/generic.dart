class genericClass<T> {
  T ob;
  genericClass(T o) {
    ob = o;
  }
  T getob() {
    return ob;
  }

  tampilTipe() {
    print('Type of T is ${ob.runtimeType}');
  }
}

main() {
  var iOb = genericClass<int>(88);
  iOb.tampilTipe();

  int v = iOb.getob();
  print('value: ${v}');

  var strOb = genericClass<String>('Generic Test');
  strOb.tampilTipe();

  var str = strOb.getob();
  print('value: ${str}');
}
