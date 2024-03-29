import 'package:flutter/material.dart';
import 'package:latihan_animasi/staggered2.dart' as prefix0;

import 'heroOp.dart';
import 'grid.dart';
import 'animated_container.dart';
import 'pesawat.dart';
import 'staggered_animasi.dart';
import 'staggered2.dart';

void main() => runApp(HeroApp());

class HeroApp extends StatelessWidget {
  @override
  Widget build(_) {
    return MaterialApp(
      showPerformanceOverlay: true,
      title: 'Transition Demo',
      home: MainScreen(),
      initialRoute: '/', // untuk route kehome
      routes: <String, WidgetBuilder>{
        '/pertama': (BuildContext context) => MyApp(),
        '/kedua': (BuildContext context) => GridApp(),
        '/ketiga': (BuildContext context) => AnimasiBesarKecil(),
        '/keempat': (BuildContext context) => FlightExample(),
        '/kelima': (BuildContext context) => prefix0.StaggerDemo(),
        '/keenam': (BuildContext context) => StaggerAnimation2(),
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
              MyButton(
                label: 'Stagered',
                iconnya: Icon(Icons.view_quilt),
                routing: '/kelima',
              ),
              MyButton(
                label: 'Stagered2',
                iconnya: Icon(Icons.translate),
                routing: '/keenam',
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
