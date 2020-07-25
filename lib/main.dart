import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "lefly",
      home: Scaffold(
        backgroundColor: Colors.green[100],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Card(
                color: Colors.green,
                child: ListTile(
                  leading: Text(
                    "Search Dustbin",
                    style: TextStyle(fontSize: 23, fontStyle: FontStyle.italic),
                  ),
                  title: Icon(
                    Icons.delete,
                    size: 40,
                    color: Colors.white,
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
