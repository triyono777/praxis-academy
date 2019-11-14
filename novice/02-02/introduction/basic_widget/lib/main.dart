import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Aplikasi ku',
    // home: ScaffoldBaru(),
    // home: RumahTutorial(),
    // home: ButtonKu(),
    home: DaftarBelanja(
      produks: <Produk>[
        Produk(nama: 'telur'),
        Produk(nama: 'minyak'),
        Produk(nama: 'garam'),
      ],
    ),
  ));
}

class AppBarbaru extends StatelessWidget {
  final Widget title;
  AppBarbaru({this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      // Container sebuah layout untuk membungkus
      height: 56.0, // 56.0 ini dalaha dalam satuan pixel dan bertipe double
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
          color: Colors.blue[500]), // [500] ini untuk memilih warna
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigasi Menu',
            onPressed: null,
          ),
          Expanded(
            child: title,
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: null,
            tooltip: 'search',
          )
        ],
      ),
    );
  }
}

class ScaffoldBaru extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          AppBarbaru(
            title: Text(
              'contoh Judul',
              style: Theme.of(context).primaryTextTheme.title,
            ),
          ),
          Expanded(
            child: Center(
              child: Text('Hello worlds'),
            ),
          )
        ],
      ),
    );
  }
}

// ######### Material ####################

class RumahTutorial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // scaffold adalah layout Utama untuk komponen Material App
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: null,
            tooltip: 'Nav menu',
          ),
          title: Text('contoh judulnya'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: null,
              tooltip: 'Cari',
            )
          ],
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Text('hallo'),
              ButtonKu(),
              Penghitung(),
              Hitung55(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'tambah',
          child: Icon(Icons.add),
          onPressed: () {
            print('floating di pencet');
          },
        ));
  }
}

// ######### Gesture ####################
class ButtonKu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('button di pencet');
      },
      child: Container(
        height: 36.0,
        margin: EdgeInsets.all(20.0),
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0), color: Colors.lightGreen),
        child: Center(
          child: Text('Tombol'),
        ),
      ),
    );
  }
}

// ###### membuat statefull##############
class Penghitung extends StatefulWidget {
  @override
  _PenghitungState createState() => _PenghitungState();
}

class _PenghitungState extends State<Penghitung> {
  var _hitung = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        RaisedButton(
          onPressed:
              _tambahHitungan, // untuka memanggil suatu fungsi yang sudah didefinisikan tidak menggunakan tnda ()
          child: Text('Bertambah'),
        ),
        Text('Hitungan: $_hitung')
      ],
    );
  }

  _tambahHitungan() {
    setState(() {
      _hitung++;
    });
  }
}

// ######### menggabungkan beberapa stateless dan state full ##############
class TampilHitung55 extends StatelessWidget {
  final hitung;
  TampilHitung55({this.hitung});

  @override
  Widget build(BuildContext context) {
    return Text('Hitung: $hitung');
  }
}

class PenambahHitung55 extends StatelessWidget {
  final VoidCallback saatDipencet;
  PenambahHitung55({this.saatDipencet});
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: saatDipencet,
      child: Text('Hitungan nambah'),
    );
  }
}

class Hitung55 extends StatefulWidget {
  @override
  _Hitung55State createState() => _Hitung55State();
}

class _Hitung55State extends State<Hitung55> {
  var _hitungan55 = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        PenambahHitung55(
          saatDipencet: _hitunganNambah,
        ),
        TampilHitung55(
          hitung: _hitungan55,
        )
      ],
    );
  }

  _hitunganNambah() {
    setState(() {
      ++_hitungan55;
    });
  }
}

// ############## menggabungkan semua  (kasus Keranjang Belanja) ##############

class Produk {
  final nama;
  const Produk({this.nama});
}

typedef KeranjangBerubahCallback(Produk produk, bool dalamKeranjang);

class DaftarBelanjaanItem extends StatelessWidget {
  final Produk produk;
  final bool dalamKeranjang;
  final KeranjangBerubahCallback keranjangBerubah;
  DaftarBelanjaanItem(
      {Produk produk, this.keranjangBerubah, this.dalamKeranjang})
      : produk = produk,
        super(key: ObjectKey(produk));
  Color _getWarna(BuildContext context) {
    return dalamKeranjang ? Colors.black54 : Theme.of(context).primaryColor;
  }

  TextStyle _getTextStyle(BuildContext context) {
    if (!dalamKeranjang) return null;

    return TextStyle(
      color: Colors.black54,
      decoration: TextDecoration.lineThrough,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        keranjangBerubah(produk, dalamKeranjang);
      },
      leading: CircleAvatar(
        backgroundColor: _getWarna(context),
        child: Text(produk.nama[0]),
      ),
      title: Text(
        produk.nama,
        style: _getTextStyle(context),
      ),
    );
  }
}

class DaftarBelanja extends StatefulWidget {
  DaftarBelanja({Key key, this.produks})
      : super(key: key); // super key disini buat apa??
  final List<Produk> produks;
  @override
  _DaftarBelanjaState createState() => _DaftarBelanjaState();
}

class _DaftarBelanjaState extends State<DaftarBelanja> {
  var _keranjangBelanja = Set<Produk>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Belanja'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        children: widget.produks.map((Produk produk) {
          return DaftarBelanjaanItem(
              produk: produk,
              dalamKeranjang: _keranjangBelanja.contains(produk),
              keranjangBerubah: _handleKeranjangBerubah);
        }).toList(),
      ),
    );
  }

  _handleKeranjangBerubah(Produk produk, bool dalamKeranjang) {
    setState(() {
      if (!dalamKeranjang)
        _keranjangBelanja.add(produk);
      else
        _keranjangBelanja.remove(produk);
    });
  }
}