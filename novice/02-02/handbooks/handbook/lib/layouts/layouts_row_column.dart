import 'package:flutter/material.dart';

class RowColumn extends StatelessWidget {
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
