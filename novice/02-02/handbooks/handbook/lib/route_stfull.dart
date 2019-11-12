import 'package:flutter/material.dart';

class RoutingDenganSTF extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var namaRoute = <String, WidgetBuilder>{
      HomePageItems.namaRoute: (BuildContext context) => HomePageItems(
            judul: 'Item Home page',
          )
    };
    return MaterialApp(
      title: 'Demo Route',
      theme: ThemeData(primaryColor: Colors.blue),
      home: Homepage(
        judul: 'Demo Homepage',
      ),
      routes: namaRoute,
    );
  }
}

class Homepage extends StatefulWidget {
  final judul;
  Homepage({Key key, this.judul}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var _penghitung = 0;
  @override
  Widget build(BuildContext context) {
    // var tombol = IconButton(icon: Icon(Icons.access_alarm)onPressed:,);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.judul),
      ),
      body: Column(
        children: <Widget>[
          Text('kucing'),
          Text('Sapi'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _penghitungTambah,
        tooltip: 'buat tambah',
        child: Icon(Icons.add),
      ),
    );
  }

  _penghitungTambah() {
    Navigator.pushNamed(context, HomePageItems.namaRoute);
  }
}

class HomePageItems extends StatefulWidget {
  static const namaRoute = '/ItemNoSatu';
  final judul;
  HomePageItems({Key key, this.judul}) : super(key: key);
  @override
  _HomePageItemsState createState() => _HomePageItemsState();
}

class _HomePageItemsState extends State<HomePageItems> {
  @override
  Widget build(BuildContext context) {
    var tombol = IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: _buttonDiPencet,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.judul),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('item satu'),
            Text('item dua'),
            Center(
              child: Row(
                children: <Widget>[tombol, Text('kembali ke home page')],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _floatingButtonDiPencet,
        tooltip: 'tambah',
        child: Icon(Icons.add),
      ),
    );
  }

  _floatingButtonDiPencet() {}

  _buttonDiPencet() {
    Navigator.pop(context);
  }
}
