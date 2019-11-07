class classSendiri<TipeDataBaru> {
  TipeDataBaru barangBaru;
  classSendiri(TipeDataBaru objekbarang) {
    barangBaru = objekbarang;
  }
  TipeDataBaru getbarangBaru() {
    return barangBaru;
  }

  tampilTipe() {
    print('Type of TipeDataBaru is ${barangBaru.runtimeType}');
  }
}

main() {
  var intBarangBaru = classSendiri<int>(88);
  intBarangBaru.tampilTipe();

  int isi = intBarangBaru.getbarangBaru();
  print('value: ${isi}');

  var stringBarangBaru = classSendiri<String>('Generic Test');
  stringBarangBaru.tampilTipe();

  var kata = stringBarangBaru.getbarangBaru();
  print('value: ${kata}');
}
