import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Aplikasi ku',
    // home: ScaffoldBaru(),
    home: RumahTutorial(),
    // home: ButtonKu(),
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
            children: <Widget>[Text('hallo'), ButtonKu(), Penghitung()],
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
          onPressed: _tambahHitungan,
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

// class TampilHituung extends StatelessWidget {
//   final hitung;
//   TampilHituung({this.hitung});

//   @override
//   Widget build(BuildContext context) {
//     return Text('Hitung: $hitung'

//     );
//   }
// }
