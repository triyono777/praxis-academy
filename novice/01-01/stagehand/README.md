# Hari ke-1 | memulai dart
# Hello World

fungsi **main(){}** harus ada disetiap aplikasi yang dibuat
```dart
void main(){
print('Hello, World');
}
```
Hasil:
![hasil](gambar/gambar.png)

```dart
print();
``` 
digunakan untuk menampilkan teks pada console
## Variabel
pada dart dapat menggunakan **var** untuk semua tipe data dan secara otomastis tipe data kan menyesuaikan dengan **value** dari variabel tersebut

```dart
var name = 'Voyager I';
var year = 1997;
var antennaDiameter = 3.7;
var flybyObject = ['Jupiter','Saturnus','Uranus','Neptunus', 'Merkurius'];
var image = {
'tags': ['merkurius'],
'url':'http://gambar.com/merkurius.png'
};
```
pada kode diatas variabel
**name** akan bertipe **String**, <br />
**year** akan bertipe **int**, <br />
**antennaDiameter** akan bertipe **double**, <br />
**flyObject** akan bertipe **array**, <br />
**image** akan bertipe **map** <br />

# Control flow statements

Variabel diambil dari pada latihan diatas

## Conditional Statements IF ELSE ##
Digunakan pada kasus dengan syarat tertentu atau terdapat beberapa kondisi yang memenuhi syarat

```dart
if (year >= 2001){
print('abad 21');
}else if (year >= 1901){
print('abad 20');
}
```

## for in

**for in** loop dapat digunakan pada variabel yang berupa list atau array.
Jadi setiap object yang terdapat pada list tersebut akan dipanggil
```dart
for (var namaobjek in flyObject) {
print(namaobjek);
}
```

Hasil:
![hasil](http://gambar.com/gambar.png)

## for
**for** melakukan pengulangan dengan memberi inisiasi, batas pengulangan , dan operasi pengulanganya

```dart
for (int month=1; month <=month; month++){
print(month);
}
```

Hasil:
![hasil](http://gambar.com/gambar.png)

## while
**while** melakukan pengulangan saat kondisi terpenuhi atau **true**

```dart
while (year < 2000){
year +=1;
print(year);
}
```

Hasil:
![hasil](http://gambar.com/gambar.png)

# Functions
```dart
int perpangkatan(int n){
if (n==0 || n == 1) return n;
return n*n;
}

var result = perpangkatan(35);
print(result);
```

# Comments

pada dart komentar biasanya menggunakan **//** untuk memberi tanda atau penjelasan pada suatu kode

```dart
//komentar dalam satu baris

/// komentar dokumentasi untuk library, class dan member (auto nambah "///" saat enter)

/*
komentar untuk beberapa baris/paragraf
*/
```

# Imports

**import** digunakan untuk mengakses library
```dart
//importing dari core library , library bawaan
import 'dart:math';

//import dari sumber lain (external package), atau diluar bawaan
import 'package:test/test.dart';

//import files 
import 'path/file/fila_lain.dart';
```


