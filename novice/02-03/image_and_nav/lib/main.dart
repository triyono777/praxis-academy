import 'package:flutter/material.dart';

void main() => runApp(HeroApp());

class HeroApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Transition Demo',
      home: MainScreen(),
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
      body: GestureDetector(
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                Hero(tag: 'imageHero', child: Image.asset('images/luffy.jpeg')),
                Hero(tag: 'imageHero1', child: Image.asset('images/zoro.jpg')),
                Hero(tag: 'imageHero2', child: Image.asset('images/nami.jpg')),
                Hero(
                    tag: 'imageHero3', child: Image.asset('images/choper.jpg')),
              ],
            ),
          ),
        ),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) {
            return DetailScreen();
          }));
        },
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
