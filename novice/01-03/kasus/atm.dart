import 'dart:io';
import 'deposit.dart';
import 'saldo.dart';
import 'tarikTunai.dart';

main() {
  var menu = 0;
  var keluar = 0;

  print('===================================');
  print('==selamat datang di ATM sederhana==');
  print('===================================\n');

  do {
    try {
      do {
        print('\n\nPilih transaksi anda');
        print('Tekan [1] Deposit');
        print('Tekan [2] Tarik Tunai');
        print('Tekan [3] Cek Saldo');
        print('Tekan [4] Keluar \n\n');
        stdout.write('silahkan masukkan menu pilihan anda:');
        menu = int.parse(stdin.readLineSync());

        switch (menu) {
          case 1:
            stdout.write('masukkan jumlah setor tunai: ');
            Deposit.set_deposit(double.parse(stdin.readLineSync()));
            SaldoSaatini.saldo = Deposit.get_deposit() + SaldoSaatini.saldo;
            MesinAtm.depositUang();
            break;
          case 2:
            print('untuk tarik tunai pastikan saldo anda mencukupi');
            stdout.write('masukkan nilai tarik tunai: ');
            TarikTunai.tarikTunai = double.parse(stdin.readLineSync());
            MesinAtm.jumlahTarikTunai();
            break;
          case 3:
            MesinAtm.cekSaldo();
            break;
          case 4:
            print('transaksi selesai');
            break;
          default:
            print('\nmaaf menu tidak tersedia ');
        }
      } while (menu > 4);
      do try {
        {
          print('\napakah anda akan melakukan transaksi lain?');
          print('tekan [1] Ya \t tekan [2] Tidak');
          stdout.write('masukkan pilihan: ');
          keluar = int.parse(stdin.readLineSync());

          if (menu > 2) {
            print('pilihan yang anda masukkan salah\n');
          }
        }
      } catch (e) {
        print('input yang anda masukkan salah, hanya angka\n');
        stdout.write('masukkan pilihan: ');
        keluar = int.parse(stdin.readLineSync());
      } while (keluar > 2);
    } catch (e) {
      print('input yang anda masukkan salah, hanya angka\n');
      stdout.write('silahkan masukkan menu pilihan anda:');
    }
  } while (keluar <= 1);

  print('Terima Kasih telah menggunakan ATM sederhana');
}

class MesinAtm {
  static cekSaldo() {
    print('saldo anda dalah ${SaldoSaatini.get_saldo()}');
  }

  static jumlahTarikTunai() {
    if (SaldoSaatini.saldo == 0) {
      print('saldo anda kosong');
      print('anda tidak dapat melakukan tarik tunai');
    } else if (SaldoSaatini.saldo <= 500) {
      print('sisa saldo anda berada pada saldo minimum Rp.500 ');
      print('silahkan cek saldo anda');
    } else if (TarikTunai.tarikTunai > SaldoSaatini.saldo) {
      print('\njumlah tarik tunai anda melebihi saldo');
      print('silahkan cek tarik tunai yang anda masukkan');
    } else {
      SaldoSaatini.saldo = SaldoSaatini.saldo - TarikTunai.tarikTunai;
      print(
          'Anda melakukan tarik tunai sebesar Rp. ${TarikTunai.tarikTunai.toStringAsFixed(2)}');
    }
  }

  static depositUang() {
    print(
        'anda melakukan deposit uang sebesar Rp. ${Deposit.deposit.toStringAsFixed(2)}');
  }
}
