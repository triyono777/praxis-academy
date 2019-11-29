import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverGridContoh();
  }
}

class SliverGridContoh extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Collapsing List Demo')),
        body: CollapsingList(),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
    @required this.minHeight,
    @required this.maxHeight,
    @required this.child,
  });
  final double minHeight;
  final double maxHeight;
  final Widget child;
  @override
  double get minExtent => minHeight;
  @override
  double get maxExtent => math.max(maxHeight, minHeight);
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}

class CollapsingList extends StatelessWidget {
  SliverPersistentHeader makeHeader(String headerText) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: _SliverAppBarDelegate(
        minHeight: 60.0,
        maxHeight: 200.0,
        child: GestureDetector(
          onTap: () {},
          child: Container(
            color: Colors.black,
            padding: EdgeInsets.all(1.0),
            child: Container(
                color: Colors.grey,
                padding: EdgeInsets.all(10),
                child: Header(headerText)),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        // makeHeader('Header Section 1'),
        // SliverGrid.count(),
        makeHeader('Header Section 3'),
        SliverGrid(
          // key: header3,
          gridDelegate: new SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200.0,
            // mainAxisSpacing: 10.0,
            // crossAxisSpacing: 10.0,
            // childAspectRatio: 4.0,
          ),
          delegate: new SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return new Container(
                alignment: Alignment.center,
                // color: Colors.teal[100 * (index % 9)],
                // child: new Text('grid item $index'),
                child: Column(
                  children: <Widget>[
                    GambarChara(),
                    // Text('nama')
                  ],
                ),
              );
            },
            childCount: 20,
          ),
        ),
      ],
    );
  }
}

class Header extends StatelessWidget {
  Header(
    this.headerText, {
    Key key,
  }) : super(key: key);

  GlobalKey globalKeyx = new GlobalKey();

  final String headerText;

  void collaps() {
    Scrollable.ensureVisible(globalKeyx.currentContext);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: globalKeyx,
      onTap: collaps,
      child: Container(
        color: Colors.lightBlue[300],
        child: Center(
          child: Text(headerText),
        ),
      ),
    );
  }
}

class GambarChara extends StatelessWidget {
  // final gambar;
  // final nama;
  Image gambar2 = Image.asset('assets/logo.png');

  // const GambarChara({Key key, this.gambar, this.nama}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blueAccent,
              image: DecorationImage(image: AssetImage('assets/luffy.jpg'))),
          child: Align(
            child: Text(
              'Luffy',
              textAlign: TextAlign.center,
            ),
          )),
    );
  }
}
