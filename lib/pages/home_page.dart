import 'package:flutter/material.dart';
import 'map.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              onPressed: () {
                print('hola');
                Map();
              },
              child: Card(
                child: ListTile(
                    leading: Text(
                      "Search Dustbin",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    trailing: Image.asset(
                      'images/bin-removebg-preview.png',
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
