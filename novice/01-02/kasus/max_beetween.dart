main() {
  var nomorAcak = [10, 3, 2, 1, 3, 4, 2, 1, 6, 67];
  print(cariNilaiMax(nomorAcak, 0, nomorAcak.length));
}

cariNilaiMax(daftarList, nilai, total) {
  var max = nilai;
  for (var posisi = nilai + 1; posisi < total; posisi++) {
    if (daftarList[posisi] > daftarList[max]) {
      max = posisi;
    }
  }
  return max;
}
