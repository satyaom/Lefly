import 'package:flutter/material.dart';

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
    );
  }
}
