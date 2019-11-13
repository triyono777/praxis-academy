import 'package:flutter/material.dart';
import 'latihan_routing.dart';

void main() => runApp(HeroApp());

class HeroApp extends StatelessWidget {
  @override
  Widget build(_) {
    return MaterialApp(
      title: 'Transition Demo',
      home: MainScreen(),
      routes: <String, WidgetBuilder>{
        '/pertama': (BuildContext context) => FirstRoute(),
        '/kedua': (BuildContext context) => SecondRoute(),
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
              GestureDetector(
                child: Center(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        Hero(
                            tag: 'imageHero',
                            child: Image.asset('images/luffy.jpeg')),
                        Hero(
                            tag: 'imageHero1',
                            child: Image.asset('images/zoro.jpg')),
                        Hero(
                            tag: 'imageHero2',
                            child: Image.asset('images/nami.jpg')),
                        Hero(
                            tag: 'imageHero3',
                            child: Image.asset('images/choper.jpg')),
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      // MaterialPageRoute(builder: (BuildContext context)
                      MaterialPageRoute(builder: (_) {
                    return DetailScreen();
                  }));
                },
              ),
              MyButton(
                label: 'button satu',
                iconnya: Icon(Icons.web),
                routing: '/pertama',
              ),
              MyButton(
                label: 'button dua',
                iconnya: Icon(Icons.whatshot),
                routing: '/kedua',
              ),
              MyButton(
                label: 'button tiga',
                iconnya: Icon(Icons.work),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Center(
          child:
              Hero(tag: 'imageHero', child: Image.asset('images/luffy.jpeg')),
        ),
        onTap: () {
          Navigator.pop(context);
        },
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
