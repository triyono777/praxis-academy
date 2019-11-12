import 'package:flutter/material.dart';

class ButtonKeren extends StatefulWidget {
  @override
  _ButtonKerenState createState() => _ButtonKerenState();
}

class _ButtonKerenState extends State<ButtonKeren> {
  var penghitung = 0;
  var kata = ['Flutter', 'Keren ', 'bro'];
  var tampilString = '';

  /// bisa juga ditulis begini
// int penghitung=0;
// List<String> kata= ['Flutter', 'Keren ','bro'];
  buttonDitekan() {
    setState(() {
      tampilString =
          kata[penghitung]; //penghitung disini sebagai index untuk listnya
      penghitung = penghitung < 2 ? penghitung + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Statefull widget'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(tampilString,
                  style:
                      TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
              Padding(
                padding: EdgeInsets.all(15.0),
              ),
              RaisedButton(
                child: Text(
                  'Tekan tombol ini!',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontStyle: FontStyle.italic),
                ),
                color: Colors.red,
                onPressed: buttonDitekan,
              )
            ],
          ),
        ),
      ),
    );
  }
}
