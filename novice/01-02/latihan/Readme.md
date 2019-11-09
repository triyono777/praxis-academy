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
 double dobel = 2.5; // // tipedata double
 int satu = int.parse('1'); //mengubah string ke integer
 double dobel2 = double.parse('2.6'); //merubah string ke double
 double gantiDobel2 = 2.89988777.toStringAsFixed(2); //dari dobel ke string dibulatkan biasanya untuk mata uang
```
### strings
### booleans
### runes
### symbols

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




