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
**name** akan bertipe **String**,
**year** akan bertipe **int**,
**antennaDiameter** akan bertipe **double**,
**flyObject** akan bertipe **array**,
**image** akan bertipe **map**

# Control flow statements

Variabel diambil dari pada latihan diatas

## Conditional Statements IF ELSE ##
Digunakan pada kasus dengan syarat tertentu atau terdapat beberapa kondisi yang memenuhi syarat

``dart
if (year >= 2001){
print('abad 21');
}else if (year >= 1901){
print('abad 20');
}
```

