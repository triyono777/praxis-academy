main() {
  var nomorAcak = [3, 6, 6, 8, 4, 2, 4, 7, 75, 2, 2];
  var mulai;
  for (mulai = nomorAcak.length - 1; mulai >= 0; mulai--) {
    var key = nomorAcak[mulai];
    var mulai2 = mulai + 1;
    while (mulai2 < nomorAcak.length && key > nomorAcak[mulai2]) {
      nomorAcak[mulai2 - 1] = nomorAcak[mulai2];
      mulai2 = mulai2 + 1;
    }
    nomorAcak[mulai2 - 1] = key;
  }
  print(nomorAcak);
}
