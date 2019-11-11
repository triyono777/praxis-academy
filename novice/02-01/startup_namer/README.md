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
}```

   2. Simpan lalu Run aplikasi (F5) hasilnya akan seperti ini

<img src='images/helloWorld.jpeg'>

## Langkah 2: menggunakan *package*



