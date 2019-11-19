import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(new MaterialApp(home: new JsonDua()));
}

class JsonDua extends StatefulWidget {
  @override
  JsonDuaState createState() => new JsonDuaState();
}

class JsonDuaState extends State<JsonDua> {
  List data;

  Future<String> getData() async {
    var response = await http.get(
        // Uri.encodeFull("https://jsonplaceholder.typicode.com/posts"),
        Uri.encodeFull("https://jsonplaceholder.typicode.com/users"),
        headers: {"Accept": "application/json"});

    this.setState(() {
      data = json.decode(response.body);
    });

    print(data[1]["title"]);

    return "Success!";
  }

  @override
  void initState() {
    this.getData();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: new Text("Listviews"), backgroundColor: Colors.blue),
      body: new ListView.builder(
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (BuildContext context, int index) {
          return new Card(
            // child: new Text(data[index]["title"]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new Text(data[index]["id"].toString()),
                new Text(data[index]["name"].toString()),
                // new Text(data[index]["address"].toString()),
                Text(data[index]['address']['street'].toString()),
                Text(data[index]['address']['geo']['lat'].toString()),
              ],
            ),
          );
        },
      ),
    );
  }
}
