import 'package:flutter/material.dart';


main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Provider',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AnimatedContainer(
                margin: EdgeInsets.all(5),
                width: 100,
                height: 100,
                color: Colors.lightBlue,
                duration: Duration(microseconds: 500),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.all(5),
                      child: Text(
                        'Red accent',
                        style: TextStyle(color: Colors.redAccent),
                      )),
                  Switch(
                    value: true,
                    onChanged: (valueBaru) {},
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Text(
                      'light blue',
                      style: TextStyle(color: Colors.lightBlue),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
