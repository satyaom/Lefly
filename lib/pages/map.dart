import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_google_maps/flutter_google_maps.dart';

class Map extends StatefulWidget {
  @override
  _MapState createState() => _MapState();
}

class _MapState extends State<Map> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GoogleMap(
          mobilePreferences: MobileMapPreferences(
            myLocationEnabled: true,
            myLocationButtonEnabled: true,
          ),
        ),
      ),
    );
  }
}
