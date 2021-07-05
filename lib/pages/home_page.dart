import 'package:flutter/material.dart';
import 'map.dart';
import 'package:expansion_card/expansion_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: RawMaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GoogleMapShow(),
                    ),
                  );
                  print('hola');
                  GoogleMapShow();
                },
                elevation: 2.0,
                fillColor: Colors.white,
                child: CircleAvatar(
                  radius: 70.0,
                  child: Image.asset(
                    'images/bin-removebg-preview.png',
                  ),
                ),
                padding: EdgeInsets.all(15.0),
                shape: CircleBorder(),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Center(
                child: ExpansionCard(
              borderRadius: 20,
              background: Image.asset(
                "images/tree.gif",
                fit: BoxFit.cover,
              ),
              title: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "About Trees",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.lightBlueAccent),
                    ),
                  ],
                ),
              ),
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Content goes over here !",
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
