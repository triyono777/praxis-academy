import 'package:english_words/english_words.dart' as kumpulanKata;
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final pasanganKata_kata = kumpulanKata.WordPair.random();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Startup Name Generator',
      theme: ThemeData(primaryColor: Colors.white),
      home: Scaffold(
        body: Center(child: RandomWords()),
      ),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  final _suggestions = <kumpulanKata.WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);
  final _tersimpan = Set<kumpulanKata.WordPair>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Startup Name Generator'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.bookmark,
              color: Colors.grey,
            ),
            onPressed: _tekanSimpan,
          )
        ],
      ),
      body: _buildSuggestions(),
    );
  }

  Widget _buildSuggestions() {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i.isOdd) return Divider();
        final index = i ~/ 2;
        if (index >= _suggestions.length) {
          _suggestions.addAll(kumpulanKata.generateWordPairs().take(2));
        }
        return _buildRow(_suggestions[index]);
      },
    );
  }

  Widget _buildRow(kumpulanKata.WordPair pasangan) {
    final bool sudahDisimpan = _tersimpan.contains(pasangan);
    return ListTile(
      title: Text(
        pasangan.asPascalCase,
        style: _biggerFont,
      ),
      trailing: /**trailing menampilkan icon setelah judul/teks */
          Icon(
        sudahDisimpan ? Icons.favorite : Icons.favorite_border,
        color: sudahDisimpan ? Colors.red : null,
      ),
      onTap: () {
        setState(() {
          if (sudahDisimpan) {
            _tersimpan.remove(pasangan);
          } else {
            _tersimpan.add(pasangan);
          }
        });
      },
    );
  }

  _tekanSimpan() {
    Navigator.of(context)
        .push(MaterialPageRoute<void>(builder: (BuildContext contex) {
      final Iterable<ListTile> tiles =
          _tersimpan.map((kumpulanKata.WordPair pasangan) {
        return ListTile(
          title: Text(
            pasangan.asPascalCase,
            style: _biggerFont,
          ),
        );
      });
      final divided =
          ListTile.divideTiles(context: context, tiles: tiles).toList();

      return Scaffold(
        appBar: AppBar(
          title: Text('Saran kata disimpan'),
        ),
        body: ListView(
          children: divided,
        ),
      );
    }));
  }
}
