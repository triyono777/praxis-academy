import 'package:flutter/material.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

class RowColumn extends StatelessWidget {
  Future<String> loadAsset() async {
    return await rootBundle.loadString('assets/config.json');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row Column'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset('assets/images/brook.jpg'),
                Image.asset('assets/images/luffy.jpeg'),

                // Text(rootBundle.loadString('assets/config.json'))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
