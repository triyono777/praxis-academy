import 'package:flutter/material.dart';
import 'logo_flutter.dart';
import 'heroOp.dart';
import 'grid.dart';
import 'animated_container.dart';
import 'pesawat.dart';

void main() => runApp(HeroApp());

class HeroApp extends StatelessWidget {
  @override
  Widget build(_) {
    return MaterialApp(
      title: 'Transition Demo',
      home: MainScreen(),
      initialRoute: '/', // untuk route kehome
      routes: <String, WidgetBuilder>{
        '/pertama': (BuildContext context) => MyApp(),
        '/kedua': (BuildContext context) => GridApp(),
        '/ketiga': (BuildContext context) => AnimasiBesarKecil(),
        '/keempat': (BuildContext context) => FlightExample(),
      },
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ONE PIECE CREW'),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Text(
                'Crew Member SHP',
                style: TextStyle(fontSize: 30.0),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
              ),
              MyButton(
                label: 'Crew Mugiwara',
                iconnya: Icon(Icons.web),
                routing: '/pertama',
              ),
              MyButton(
                label: 'Grid',
                iconnya: Icon(Icons.whatshot),
                routing: '/kedua',
              ),
              MyButton(
                label: 'animated_container',
                iconnya: Icon(Icons.work),
                routing: '/ketiga',
              ),
              MyButton(
                label: 'air plane',
                iconnya: Icon(Icons.airplanemode_active),
                routing: '/keempat',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  var routing;
  Icon iconnya;
  var label;

  MyButton({this.routing, this.iconnya, this.label});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(routing);
          print('sudah dipencet');
        },
        child: Row(
          children: <Widget>[
            IconButton(
              icon: iconnya,
              iconSize: 50.0,
              onPressed: () {
                Navigator.of(context).pushNamed(routing);
              },
            ),
            Text(
              label,
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }
}
