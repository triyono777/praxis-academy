import 'package:flutter/material.dart';
import 'package:serialisasi_json/API/model_post_hasil.dart';

class LatihanAPI extends StatefulWidget {
  @override
  _LatihanAPIState createState() => _LatihanAPIState();
}

class _LatihanAPIState extends State<LatihanAPI> {
  var postHasil;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Demo API'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text((postHasil != null
                  ? postHasil.id +
                      '|' +
                      postHasil.nama +
                      '|' +
                      postHasil.pekerjaan +
                      '|' +
                      postHasil.dibuat
                  : 'tidak ada datanya')),

              // .then mengembalikan nilai dari api kepada pemanggil
              RaisedButton(
                onPressed: () {
                  PostHasil.konekKeAPi("triyono", "programmer")
                      .then((nilaiValue) {
                    postHasil = nilaiValue;
                    setState(() {});
                    print(postHasil);
                  });
                },
                child: Text('POST'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
