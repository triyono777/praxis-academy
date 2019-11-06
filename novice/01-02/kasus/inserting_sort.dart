main() {
  var nomorAcak = [4, 5, 34, 2, 2, 4, 6];

  for (var mulai = 0; mulai < nomorAcak.length; mulai++) {
    var key = nomorAcak[mulai];
    var mulai2 = mulai;
    while (mulai2 > 0 && nomorAcak[mulai2 - 1] > key) {
      nomorAcak[mulai2] = nomorAcak[mulai2 - 1];
      mulai2 = mulai2 - 1;
    }
    nomorAcak[mulai2] = key;
  }
  print(nomorAcak);
}
