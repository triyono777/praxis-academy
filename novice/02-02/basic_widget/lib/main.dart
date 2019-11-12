import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Aplikasi ku',
    home: ScaffoldBaru(),
  ));
}

class AppBarbaru extends StatelessWidget {
  final Widget title;
  AppBarbaru({this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          // Expanded(
          //   child: Center(
          //     child: Text('Hello worlds'),
          //   ),
          // )
        ],
      ),
    );
  }
}
