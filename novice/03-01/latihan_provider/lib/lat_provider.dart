import 'package:flutter/material.dart';
import 'package:latihan_provider/aplication_color.dart';
import 'package:provider/provider.dart';

class LatihanProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<AplicationColor>(
        builder: (context) => AplicationColor(),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey[50],
            title: Consumer<AplicationColor>(
              builder: (context, aplicationcolor, _) => Text(
                'Provider',
                style: TextStyle(color: aplicationcolor.warna),
              ),
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Consumer<AplicationColor>(
                  builder: (context, aplicationcolor, _) => AnimatedContainer(
                    margin: EdgeInsets.all(5),
                    width: 100,
                    height: 100,
                    color: aplicationcolor.warna,
                    duration: Duration(microseconds: 500),
                  ),
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
                    Consumer<AplicationColor>(
                      builder: (context, aplicationcolor, _) => Switch(
                        value: aplicationcolor.isLightBlue,
                        onChanged: (valueBaru) {
                          aplicationcolor.isLightBlue = valueBaru;
                        },
                      ),
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
      ),
    );
  }
}
