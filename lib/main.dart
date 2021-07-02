import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: GoogleMaps(),
    );
  }
}

class GoogleMaps extends StatefulWidget {
  GoogleMaps({Key? key}) : super(key: key);
  // (37.42796133580664, -122.085749655962);
  @override
  _GoogleMapsState createState() => _GoogleMapsState();
}

class _GoogleMapsState extends State<GoogleMaps> {
  late GoogleMapController _controller;
  LatLng _latLng = LatLng(37.42796133580664, -122.085749655962);
  void onMapsCreated(GoogleMapController _cont) {
    _controller = _cont;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
          onMapCreated: onMapsCreated,
          initialCameraPosition: CameraPosition(target: _latLng, zoom: 12)),
    );
  }
}
