import 'package:flutter/material.dart';

class MultiProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Multi provider'),
          backgroundColor: Colors.purple,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Saldo:',
                    style: TextStyle(fontSize: 30),
                  ),
                  Container(
                    height: 30,
                    width: 150,
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.purple[100],
                        border: Border.all(color: Colors.purple, width: 2)),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        '10000',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, color: Colors.purple),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                height: 30,
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2)),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Apel 500 x 20 ',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, color: Colors.black),
                      ),
                      Text(
                        '10000',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
