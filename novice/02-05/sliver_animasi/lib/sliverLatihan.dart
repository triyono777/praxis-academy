import 'package:flutter/material.dart';

class LatihanSliver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'latihan Sliver',
      home: Scaffold(
          body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            // snap: true,
            floating: true,
            expandedHeight: 100,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('latihan Sliver appbar'),
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 300.0,
              mainAxisSpacing: 10.0,
            ),
            delegate:
                SliverChildBuilderDelegate((BuildContext contex, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.purple[100 * (index % 9)],
                child: Text('Grid item $index'),
              );
            }, childCount: 16),
          ),
          SliverAppBar(
            // snap: true,
            floating: true,
            elevation: 30,
            backgroundColor: Colors.red[300],
            flexibleSpace: FlexibleSpaceBar(
              title: Text('extent list item'),
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 200.0,
            delegate:
                SliverChildBuilderDelegate((BuildContext contex, int index) {
              return Container(
                alignment: Alignment.centerLeft,
                color: Colors.green[100 * (index % 9)],
                child: Text(
                  'List item $index',
                  style: TextStyle(fontSize: 30),
                ),
              );
            }, childCount: 10),
          ),
          SliverAppBar(
            pinned: true,
            // snap: true,
            // floating: true,
            elevation: 30,
            expandedHeight: 200,
            backgroundColor: Colors.teal[300],
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Sliver List doang'),
            ),
          ),
          SliverList(
            delegate:
                SliverChildBuilderDelegate((BuildContext contex, int index) {
              return Container(
                alignment: Alignment.centerRight,
                color: Colors.lime[100 * (index)],
                height: 150.0,
                child: Text('lemon ', style: TextStyle(fontSize: 30)),
              );
            }, childCount: 10),
          ),
        ],
      )),
    );
  }
}
