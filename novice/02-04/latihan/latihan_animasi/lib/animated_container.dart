import 'package:flutter/material.dart';

class AnimasiBesarKecil extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool anim1 = false;
  bool selected = false;
  bool selected1 = false;
  bool selected2 = false;
  bool selected3 = false;
  bool selected4 = false;
  bool selected5 = false;
  bool selected6 = false;
  bool selected7 = false;
  bool selected8 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Center(
          child: ListView(
            padding: EdgeInsets.all(20.0),
            children: <Widget>[
              Column(
                children: <Widget>[
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          anim1 = !anim1;
                        });
                      },
                      child: AnimatedContainer(
                        width: anim1 ? 200.0 : 100.0,
                        height: anim1 ? 100.0 : 200.0,
                        color: anim1 ? Colors.red[700] : Colors.green[500],
                        alignment: anim1
                            ? Alignment.centerLeft
                            : AlignmentDirectional.topCenter,
                        duration: Duration(seconds: 2),
                        curve: Curves.fastOutSlowIn,
                        // curve: Curves.elasticIn,
                        child: FlutterLogo(size: 75),
                      ),
                    ),
                  ),
                  Text(
                    'fastoutSloin',
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
              Divider(),
              Column(
                children: <Widget>[
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selected = !selected;
                        });
                      },
                      child: AnimatedContainer(
                        width: selected ? 200.0 : 100.0,
                        height: selected ? 100.0 : 200.0,
                        color: selected ? Colors.red[700] : Colors.green[500],
                        alignment: selected
                            ? Alignment.center
                            : AlignmentDirectional.topCenter,
                        duration: Duration(seconds: 2),
                        // curve: Curves.fastOutSlowIn,
                        curve: Curves.elasticIn,
                        child: FlutterLogo(size: 75),
                      ),
                    ),
                  ),
                  Text(
                    'elastic in',
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
              Divider(),
              Column(
                children: <Widget>[
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selected1 = !selected1;
                        });
                      },
                      child: AnimatedContainer(
                        width: selected1 ? 200.0 : 100.0,
                        height: selected1 ? 100.0 : 200.0,
                        color: selected1 ? Colors.red[700] : Colors.green[500],
                        alignment: selected1
                            ? Alignment.center
                            : AlignmentDirectional.topCenter,
                        duration: Duration(seconds: 2),
                        curve: Curves.bounceIn,
                        // curve: Curves.elasticIn,
                        child: FlutterLogo(size: 75),
                      ),
                    ),
                  ),
                  Text(
                    'bounc in',
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
              Divider(),
              Column(
                children: <Widget>[
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selected2 = !selected2;
                        });
                      },
                      child: AnimatedContainer(
                        width: selected2 ? 200.0 : 100.0,
                        height: selected2 ? 100.0 : 200.0,
                        color: selected2 ? Colors.red[700] : Colors.green[500],
                        alignment: selected2
                            ? Alignment.center
                            : AlignmentDirectional.topCenter,
                        duration: Duration(seconds: 2),
                        curve: Curves.bounceInOut,
                        // curve: Curves.elasticIn,
                        child: FlutterLogo(size: 75),
                      ),
                    ),
                  ),
                  Text(
                    'bounceInOut',
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
              Divider(),
              Column(
                children: <Widget>[
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selected3 = !selected3;
                        });
                      },
                      child: AnimatedContainer(
                        width: selected3 ? 200.0 : 100.0,
                        height: selected3 ? 100.0 : 200.0,
                        color: selected3 ? Colors.red[700] : Colors.green[500],
                        alignment: selected3
                            ? Alignment.center
                            : AlignmentDirectional.topCenter,
                        duration: Duration(seconds: 2),
                        curve: Curves.decelerate,
                        // curve: Curves.elasticIn,
                        child: FlutterLogo(size: 75),
                      ),
                    ),
                  ),
                  Text(
                    'decelerate',
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
              Divider(),
              Column(
                children: <Widget>[
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selected4 = !selected4;
                        });
                      },
                      child: AnimatedContainer(
                        width: selected4 ? 200.0 : 100.0,
                        height: selected4 ? 100.0 : 200.0,
                        color: selected4 ? Colors.red[700] : Colors.green[500],
                        alignment: selected4
                            ? Alignment.center
                            : AlignmentDirectional.topCenter,
                        duration: Duration(seconds: 2),
                        curve: Curves.easeInCubic,
                        // curve: Curves.elasticIn,
                        child: FlutterLogo(size: 75),
                      ),
                    ),
                  ),
                  Text(
                    'easeInCubic',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              KumpulanAnim(kurva: Curves.easeIn),

              // KumpulanAnim(
              //    kurva2 = kurva;
              //   kurva2 = Curves.decelerate,
              // ),
              Text('test')
            ],
          ),
        ),
      ),
    );
  }
}

class KumpulanAnim extends StatefulWidget {
  var kurva;

  KumpulanAnim({this.kurva});
  @override
  _KumpulanAnimState createState() => _KumpulanAnimState();
}

class _KumpulanAnimState extends State<KumpulanAnim> {
  bool selected4 = true;
  var kurva;
  _KumpulanAnimState({this.kurva});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selected4 = !selected4;
              });
            },
            child: AnimatedContainer(
              width: selected4 ? 200.0 : 100.0,
              height: selected4 ? 100.0 : 200.0,
              color: selected4 ? Colors.red[700] : Colors.green[500],
              alignment:
                  selected4 ? Alignment.center : AlignmentDirectional.topCenter,
              duration: Duration(seconds: 2),
              curve: kurva ?? Curves.bounceInOut,
              // curve: Curves.elasticIn,
              child: FlutterLogo(size: 75),
            ),
          ),
        ),
        Text(
          kurva.toString(),
          style: TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
