import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "lefly",
        theme: new ThemeData(
          primaryColor: new Color(0xff075E54),
          accentColor: new Color(0xff25D366),
        ),
        home: Scaffold(
          appBar: AppBar(
              title: Text(
            "lefly",
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
        ));
  }
}
