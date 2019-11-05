main() {
  var nilai_budi = 70;
  var nilai_andi = 100;
  var nilai_cepi = 73;

// **************** IF ELSE *************************
//satu kasus
  if (nilai_budi < 50) {
    print('jika nilai budi kurang dari 50 maka dia sedih ');
  }
//dua kasus
  if (nilai_andi == 100) {
    print('nilai andi $nilai_andi jadi dia lulus');
  } else {
    print('nilai andi $nilai_andi jadi tidak lulus');
  }

  //tiga kasus
  if (nilai_cepi <= 80) {
    print('cepi mendpat nilai A');
  } else if (nilai_cepi <= 60) {
    print('cepi mendpat nilai B');
  } else {
    print('cepi mendpat nilai C');
  }

  //*************************SWITCH ********************* */
  var hari = 3;
  String namaHari;
  switch (hari) {
    case 1:
      namaHari = 'Senin';
      break;
    case 2:
      namaHari = 'Selasa';
      break;
    case 3:
      namaHari = 'Rabu';
      break;
    case 4:
      namaHari = 'Kamis';
      break;
    case 5:
      namaHari = 'Jumat';
      break;
    case 6:
      namaHari = 'Sabtu';
      break;
    case 7:
      namaHari = 'Minggu';
      break;
    default:
      'nomor hari hanya sampai 7';
  }

  assert(namaHari == 'rabu', 'nomor hari salah');
  print(namaHari);

  // ******* pengulangan*************
//WHILE
  var nomor = 0;
  while (nomor <= 5) {
    print('cetak baris ke $nomor');
    nomor++;
  }

//DO WHILE

  var mobil;
  mobil = 1;
  do {
    print('mobile ke $mobil');
    mobil++;
  } while (mobil < 4);
//FOR
  for (var bulan = 0; bulan < 5; bulan++) {
    print('bulan ke $bulan');
  }

  //break

  for (var bulan = 0; bulan < 5; bulan++) {
    print('bulan ke$bulan');
    if (bulan == 3) {
      break;
    }
  }
// continue

  for (var bulan = 2; bulan < 12; bulan++) {
    if (bulan.isEven) {
      continue;
    }
    print('bulan ganjil adalah bulan ke$bulan');
  }
}
