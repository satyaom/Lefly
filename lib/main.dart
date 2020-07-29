import 'package:flutter/material.dart';
import 'package:flutter_google_maps/flutter_google_maps.dart';
import 'package:lefly/pages/home_page.dart';
import 'pages/home_page.dart';

void main() {
  GoogleMap.init('AIzaSyB1EPSBhXTGSJpeKhaVREiM8owrfIS8U7Y');
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'lefly',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
