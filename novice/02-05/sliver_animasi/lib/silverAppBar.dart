import 'package:flutter/material.dart';

class SilverAppBarContoh extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 200,
            pinned: true,
            floating: true,
            snap: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Sliver App Bar'),
              background: Image.network(
                'https://gunung.id/wp-content/uploads/2018/08/gunung-prau.jpg', // <===   Add your own image to assets or use a .network image instead.
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverFillRemaining(
            child: SingleChildScrollView(
              child: Column(
                children: List<int>.generate(50, (index) => index)
                    .map((index) => Container(
                          height: 40,
                          margin: EdgeInsets.symmetric(vertical: 10),
                          color: Colors.grey[300],
                          alignment: Alignment.center,
                          child: Text('Heading $index'),
                        ))
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
