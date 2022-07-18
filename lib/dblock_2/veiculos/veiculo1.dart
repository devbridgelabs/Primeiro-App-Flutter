import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Veiculo1 extends StatefulWidget {
  const Veiculo1({Key? key}) : super(key: key);

  @override
  State<Veiculo1> createState() => _Veiculo1State();
}

class _Veiculo1State extends State<Veiculo1> {
  late GoogleMapController mapController;
  final Set<Marker> markers = new Set(); //markers for google map
  static const LatLng showLocation = const LatLng(
      -16.326877819296733, -48.94224925981115); //location to show in map

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      //Map widget from google_maps_flutter package
      zoomGesturesEnabled: true, //enable Zoom in, out on map
      initialCameraPosition: CameraPosition(
        //innital position in map
        target: showLocation, //initial position
        zoom: 17, //initial zoom level
      ),
      markers: getmarkers(), //markers to show on map
      mapType: MapType.normal, //map type
      onMapCreated: (controller) {
        //method called when map is created
        setState(() {
          mapController = controller;
        });
      },
    );
  }

  Set<Marker> getmarkers() {
    //markers to place on map
    setState(() {
      markers.add(Marker(
        //add first marker
        markerId: MarkerId(showLocation.toString()),
        position: showLocation, //position of marker
        infoWindow: InfoWindow(
          //popup info
          title: 'Marker Title First ',
          snippet: 'My Custom Subtitle',
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));

      //add more markers here
    });

    return markers;
  }
}
