import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 10), vsync: this);
    animation = Tween<double>(begin: 0.0, end: 1.0).animate(controller);
    controller.forward();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    controller.forward();
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(
          title: 'Product layout demo home page',
          animation: animation,
        ));
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title, this.animation}) : super(key: key);
  final String title;
  final Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Mugiwara Crew")),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          children: <Widget>[
            FadeTransition(
                child: ProductBox(
                    name: "Luffy",
                    description: "Dia Kapten",
                    price: 50000000,
                    image: "luffy.jpeg"),
                opacity: animation),
            MyAnimatedWidget(
                child: ProductBox(
                    name: "Zorro",
                    description: "Pendekar pedang",
                    price: 4500000,
                    image: "zoro.jpg"),
                animation: animation),
            ProductBox(
                name: "Nami",
                description: "dia Navigator",
                price: 3000000,
                image: "nami.jpg"),
            ProductBox(
                name: "Logo",
                description: "Logo bendera ",
                price: 1500,
                image: "logo.png"),
            ProductBox(
                name: "Logo bendera ",
                description: "Logo bendera ",
                price: 100,
                image: "logo.png"),
            ProductBox(
                name: "Logo bendera ",
                description: "Logo bendera ",
                price: 20,
                image: "logo.png"),
          ],
        ));
  }
}

class ProductBox extends StatelessWidget {
  ProductBox({Key key, this.name, this.description, this.price, this.image})
      : super(key: key);
  final String name;
  final String description;
  final int price;
  final String image;
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 140,
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Image.asset("images/" + image),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(this.name,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(this.description),
                          Text("Bounty: " + this.price.toString()),
                        ],
                      )))
            ])));
  }
}

class MyAnimatedWidget extends StatelessWidget {
  MyAnimatedWidget({this.child, this.animation});
  final Widget child;
  final Animation<double> animation;

  Widget build(BuildContext context) => Center(
        child: AnimatedBuilder(
            animation: animation,
            builder: (context, child) => Container(
                  child: Opacity(opacity: animation.value, child: child),
                ),
            child: child),
      );
}
