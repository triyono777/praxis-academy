# Latihan minggu ke 1 hari ke 2

## 1. Struktur dasar dan konsep dart 
***basic.dart***
```dart
// mendefinisikan sebuang fungsi
printInteger(int aNumber) {
  print('nomorny adalah $aNumber'); // print ke console
}

//setiap aplikasi dart harus menggun
main() {
  var nomor = 55; // deklarasi dan inisiasi variabel
  printInteger(nomor); // memanggil fungsi
}
```

## 2. Keyword pada dart
### berisikan berbagai istilah yang ada dalam dart
![Hasil](img/dart.png)

## 3. Variabel 
### var 
### ( *value / nilai dapat diubah*) 

**var** digunakan untuk mendeklarasikan variabel dengan fleksibel jadi, tidak terbatas hanya pada ***string, int , doubel** , maupun tipe data lain* dan apabila sudah di set/diisi dengan suatu tipe data *(misal **int**)* maka variabel tersebut akan selalu menjadi **int** *( tipe data yang sudah di set)*
beberapa contoh:
```dart
var nama = 'triyono' ; // variabel nama akan selalu string
var no_telp = 857333 ; // variabel no_telp akan selalu integer
var kumpulan_angka = [3,5,2,4,6]; // variabel kumpulan_angka akan selalu list
```

### final & const  
### ( *value / nilai tidak dapat diubah*) 
**final** digunakan untuk mendeklarasikan nilai dari suatu variabel yang **belum atau sudah** diketahui dan tidak dapat diubah
```dart
final nama = 'triyono'; // nilai sudah diketahui dan nilai tidak dapat diubah
final String nama = 'triyono'; // nilai sudah diketahui dan nilai tidak dapat diubah 
final tanggal = DateTime.now(); // nilai belum diketahu dan nilai tidak dapat diubah 
```
**const** digunakan untuk mendeklarasikan nilai dari suatu variabel yang **sudah** diketahui dan tidak dapat diubah
```dart
const panjang= 20; // value harus diisi
const int panjang= 20; 
```
## 4. Tipe Data
Pengertian dari tipe data itu sendiri adalah suatu memori pada komputer yang digunakan untuk menyimpan. Menyimpan apa? yaitu menyimpan jenis nilai dari suatu variabel.
### numbers
```dart
 int angka = 9; // tipedata angka
  var angka = 9; // tipedata angka, untuk var dapat digunakan semua tipe data
 double dobel = 2.5; // // tipedata double
 int satu = int.parse('1'); //mengubah string ke integer
 double dobel2 = double.parse('2.6'); //merubah string ke double
 double gantiDobel2 = 2.89988777.toStringAsFixed(2); //dari dobel ke string dibulatkan biasanya untuk mata uang
```
### strings
- untuk tipe data string penggunaanya diapit oleh tanda petik ' atau " 
- untuk memasukkan tanda " ,' atau n (untuk enter) menggunakan backslash \ (misal \" , \n)
- untuk menulis beberapa baris menggunakan """ atau '''

```dart
var kalimat1 = 'ini adalah kalimat panjang \" ok \n  ini baris kedua ya'; // contoh penggunaan backslah 
var kalimatnya = ''' 
      ini baris pertama
      ini baris kedua
      ini baris ketiga '''; // contoh penggunaan ''' , hasilnya akan menjadi tiga baris
      
var besarsemua = 'ini besar'.toUpperCase(); // menjadi besar semua
var kecil = 'iNi Kecil SEmua'.toLowerCase(); // menjadi kecil semua
var namaKosong = '';
print(namaKosong.isEmpty); // untuk mengecek nilainya kosong atau tidak, hasilnya true/false

        
```


### booleans
**booleans** adalah tipe data yang kembalianya berupa true atau false 
```dart
bool cekFile = true; // hasil dari variabel cek File adalah true
```
### runes
untuk menambahkan icon-icon , spesial code , dan karakter uniq lainya
```dart
var tepukTangan = '{1f44f}'; // hasilnya erupa icon tepuk tangan
var kumpulanRunes = Runes( '\u2665  \u{1f605}  \u{1f60e}  \u{1f47b}  \u{1f596}  \u{1f44d} '); // beberapa contoh Rune 
```
![Hasil](img/rune.png) 

### symbols
untuk memberi symbol
```dart
 var iniSimbol = #iniAdalahSimbol;
 print(iniSimbol);
```
![Hasil](img/simbol.png) 

## 5. fungsi / function
## 6. Operator
## 7. control flow
### if
### if else
### for
### do
### do while
### swicth case
### break
### continue
### assert

## 8. Error dan Exception Handling




