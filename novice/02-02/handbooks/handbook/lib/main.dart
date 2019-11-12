import 'package:flutter/material.dart';
import 'button_stateFull.dart';
import 'route_stfull.dart';
import 'layouts/layouts_material.dart';
import 'layouts/layouts_Non_material.dart';
import 'layouts/layouts_row_column.dart';

void main() {
  runApp(MaterialApp(
    home: MyAppStatelessWidget(),
    //home: RowColumn(),
    routes: <String, WidgetBuilder>{
      '/statefull': (BuildContext context) => ButtonKeren(),
      '/routestatefull': (BuildContext context) => RoutingDenganSTF(),
      // '/MyAppNonMaterial': (BuildContext context) => LayoutsFull(),
      '/MyAppMaterial': (BuildContext contex) => MyAppMaterial(),
      '/MyAppNonMaterial': (BuildContext contex) => MyAppNonMaterial(),
      '/RowColumn': (BuildContext contex) => RowColumn(),
    },
    // home: ButtonKeren(),
  ));
}

class MyAppStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('stateless widget'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                MyKartu(
                    judul: Text(
                      'I Love Flutter',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    icon: Icon(
                      Icons.trending_up,
                      size: 40.0,
                      color: Colors.blueAccent,
                    )),
                MyKartu(
                    judul: Text(
                      'I Love Programming Android',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    icon: Icon(
                      Icons.android,
                      size: 30.0,
                      color: Colors.green,
                    )),
                MyButton(
                  iconnya: Icon(Icons.label_important),
                  routing: '/statefull',
                  label: 'statefull',
                ),
                MyButton(
                  iconnya: Icon(Icons.chrome_reader_mode),
                  routing: '/routestatefull',
                  label: 'route statefull',
                ),
                MyButton(
                  iconnya: Icon(Icons.grid_on),
                  routing: '/MyAppNonMaterial',
                  label: 'Non Material',
                ),
                MyButton(
                  iconnya: Icon(Icons.grid_on),
                  routing: '/MyAppMaterial',
                  label: 'Material',
                ),
                MyButton(
                  iconnya: Icon(Icons.local_bar),
                  routing: '/RowColumn',
                  label: 'RowColumn',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyKartu extends StatelessWidget {
  final Widget judul;
  final Widget icon;

  MyKartu({this.judul, this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 5.0),
      child: Card(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[this.judul, this.icon],
          ),
        ),
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
