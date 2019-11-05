main() {
  var nilaiA = 20;
  var nilaiB = 7;
  var nilaiC = 1.5;
  var penjumlahan = nilaiA + nilaiC;
  var pengurangan = nilaiA - nilaiB;
  var perkalian = nilaiA * nilaiA;
  var pembagian = nilaiA / nilaiB;
  var pembagianBilBUlat = nilaiA ~/ nilaiB;
  var sisaBagi = nilaiA % nilaiB;

  bool sama = nilaiB ==
      nilaiC; //membandingkan apakah nilaiA dan nilaiB sama, hasilnya false
  bool beda = nilaiB !=
      nilaiC; //membandingkan apakah nilaiA dan nilaiB beda, hasilnya true
  bool lebihbesar = nilaiA >
      nilaiB; //membandingkan apakah nilaiA lebih besardari nilaiB , hasilnya true
  bool lebihkecil = nilaiA <
      nilaiB; //membandingkan apakah nilaiA lebih besardari nilaiB , hasilnya false
  bool lebihbesarsamadengan = nilaiA <
      nilaiB; //membandingkan apakah nilaiA lebih besardari nilaiB , hasilnya true
  bool lebihkecilsamadengan = nilaiA <
      nilaiB; //membandingkan apakah nilaiA lebih besardari nilaiB , hasilnya false

  print(penjumlahan);
  print(pengurangan);
  print(perkalian);
  print(pembagian);
  print(pembagianBilBUlat);
  print(sisaBagi);
  print(nilaiA++); //operator increment nilai pertama adalah nilai itu sendiri
  print(++nilaiA); //operator increment nilai pertama langsung ditambah 1
  print(nilaiA--); //operator increment nilai pertama
  print(--nilaiA); //operator increment nilai pertama langsung dikurangi 1

  print(sama);
  print(beda);
  print(lebihbesar);
  print(lebihbesarsamadengan);
  print(lebihkecil);
  print(lebihkecilsamadengan);
}
