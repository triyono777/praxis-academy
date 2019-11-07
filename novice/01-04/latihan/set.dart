main() {
  var nomorSet = Set();
  nomorSet.add(28);
  nomorSet.add(22);
  nomorSet.add(25);
  nomorSet.add(21);
  nomorSet.add(26);
  print('default implementasi : ${nomorSet.runtimeType}');
  for (var nomer in nomorSet) {
    print(nomer);
  }

  // set.form
  var nomorsetFrom = Set.from([2, 3, 7, 11]);
  print(nomorsetFrom);
}
