import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMaps extends StatefulWidget {
  const GoogleMaps({super.key});

  @override
  State<GoogleMaps> createState() => _GoogleMapsState();
}

class _GoogleMapsState extends State<GoogleMaps> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
  LatLng myCurrentLocation = const LatLng(23.873751, 90.396454);

  List<Marker> _marker = [];
  final List<Marker> _list = [
    const Marker(
      markerId: MarkerId('1'),
      position: LatLng(23.873751, 90.396454),
      infoWindow: InfoWindow(title: "My Location"),
    ),
  ];
  @override
  void initState() {
    _marker.addAll(_list);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GoogleMap(
      initialCameraPosition:
          CameraPosition(target: myCurrentLocation, zoom: 14.4746),
      mapType: MapType.normal,
      markers: Set<Marker>.of(_marker),
      onMapCreated: (GoogleMapController controller) {
        _controller.complete(controller);
      },
    ));
  }
}
