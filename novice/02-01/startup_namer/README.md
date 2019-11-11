# minggu -02 hari ke-01 | Memulai Flutter
# Kasus | Aplikasi Pertama Flutter part 1

## Persiapan
1. Sebelum memulai pastikan semua kebutuhan aplikasi untuk flutter sudah terinstall
2. membuat project flutter dengan nama startup_namer
3. pada VSCODE ctrl+shift+P 
4. ketikkan nama projek ,lalu enter , pilih folder untuk menyimpan projek
5. Pastikan terhubung dengan internet , karena setiap projek flutter akan mengambil source terbaru
6. Setelah selesai , dapat langsung dijalan kan dengan menekan tombol F5 pada keyboard atau pada VSCODE -> menu Debug -> Start Debuggging
7. Standar dari projek flutter adalah 'aplikasi counter'
8. hasilnya akan seperti ini [gambar]{gambar.png}
9. Untuk pengerjaan Kasus part 1 secara garis besar seperti ini

tampilkan 'hello world'

import paket **englishword**

mengganti 'hello world' dengan **wordpair**

membuat *class* **RandomWords** dengan *statefull widget*

mengganti **wordpair** diatas tadi dengan *class* **RandomWords**

memasukkan LIST ke dalam **RandomWords**  
membuat style untuk font-nya

membuat fungsi untuk menampilkan saran kata =  **_buildSuggestions()** 
membuat fungsi untuk membuat List berbentuk ListTile =  **_buildRow()**

mengubah *class* **RandomWords** main menjadi  **_buildSuggestions()**
part 1 selesai

## Mulai coding
### Langkah 1: Menampilkan Hello World
1. menghapus semua isi file pada *lib/main.dart* dan diganti dengan code dibawah ini:
```dart
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
```

   2. Simpan lalu Run aplikasi (F5) hasilnya akan seperti ini

<img src='images/helloWorld.jpeg'>

## Langkah 2: menggunakan *package* external
pada langkah ini kita akan menggunakan library/package bernama <a href='https://pub.dev/packages/english_words'>english_words</a>
yang berisi kata-kata dalam bahasa inggris
1. buka file [pubspec.yaml](pubspec.yaml) dan tambahkan `english_words: any` 
   - dengan menggunakan `any` akan mengambil update terbaru dari paket tersebut 
   - untuk penulisannya harus tepat sejajar kebawah dengan `cupertino_icons: ^0.1.2`
   seperti pada gambar:
   <img src='images/sejajar.jpeg'>
2. lalu simpan maka flutter akan meng-*update* package , 
   - apabila tidak terupdate otomatis dapat dilakukan manual (pada VSCODE) dengan **CTRL+shift+P** lalu cari **Flutter: Upgrade Packages**
   - atau dengan terminal `flutter pub get` atau `flutter pub upgrade` 
   - sampai muncul di konsole atau terminal 
```sh
flutter packages get
Running "flutter packages get" in startup_namer...
Process finished with exit code 0
```
3. setelah upgrade package selesai, import ke [lib/main.dart](lib/main.dart)
```dart
//...
import 'package:english_words/english_words.dart';
```
atau menggunakan variabel ganti memakai ' **as nama_variabel** '
```dart
//...
import 'package:english_words/english_words.dart' as kumpulanKata;
```
4. menggunakan package `english_words` pada [lib/main.dart](lib/main.dart) 
  - membuat variabel untuk fungsi `random()` dari package `english_words` didalam *class* **MyApp** 
```dart
class MyApp extends StatelessWidget {
  final pasangankata = kumpulanKata.WordPair.random(); 

```
  - lalu ganti `Text('Hello World')` menjadi `Text(pasangankata.asPascalCase)`   ,*asPascalCase* adalah salah satu fungsi yg ada di package `english_words`
### Coding lengkapnya
```dart
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart' as kumpulanKata; // tambahkan baris ini

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
 final pasangankata = kumpulanKata.WordPair.random(); // tambahkan baris ini

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Text(pasangankata.asPascalCase), // tambahkan baris ini
        ),
      ),
    );
  }
}
```
simpan lalu hot reload atau **F5**
Hasilnya : 
[hasil](gambar/sample.png)
Text `Hello world` berganti menjadi text random yang diambil dari package `english_words`

## langkah 3: menambahkan class Statefull widget 
Perbedaan **Statefull widget** dan **Stateless widget**
**Statefull widget** : semua komponen didalamnya **dapat** diubah/dinamis
**Stateless widget** : semua komponen didalamnya **tidak dapat** diubah/dinamis

1. untuk membuat statefull widget agar lebih mudah gunakan shortcut `stf` lalu enter dan masukkan nama dari class-nya misal `KataAcak`
   - buat lah dibawah dari class **MyApp**
   - ketik `stf` lalu **enter** akan mucul 4 kursor, isikan nama misal `KataAcak`
  
```dart
class KataAcak extends StatefulWidget {
  @override
  _KataAcakState createState() => _KataAcakState();
}

class _KataAcakState extends State<KataAcak> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}
```
2. ubah class **_KataAcakState** menjadi
```dart
class _KataAcakState extends State<KataAcak> {
  @override
  Widget build(BuildContext context) {
    final pasangankata = kumpulanKata.WordPair.random();
    return Text(pasangankata.asPascalCase);
  }
}
```
3. simpan lalu Hot reload (**F5**) , hasilnya akan sama seperti sebelumnya namun yang berbeda adalah komponen didalamnya kita sudah menggunakan statfull widget

## langkah 4. membuat infinite scrolling ListView 
pada langkah ini kita akan membuat scroll List tanpa batas

1. kita buat dulu variabel untuk menyimpan **List** nya dan juga untuk dan juga untuk ukuran font nya , agar code kita lebih re-usable/ dipakai ulang
  - tambahkan pada `class _KataAcakState`
```dart
class _KataAcakState extends State<KataAcak> {
  @override
  Widget build(BuildContext context) {
// tambahkan dua baris kode ini
    final _saranKata = <KataAcak>[];
    final _ukuranFont = const TextStyle(fontSize: 18);

  ...
  }
}

```




