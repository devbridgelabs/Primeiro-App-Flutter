import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:teste/graficos/graficos.dart';

class Marcadores extends StatefulWidget {
  const Marcadores({Key? key}) : super(key: key);

  @override
  State<Marcadores> createState() => _MarcadoresState();
}

class _MarcadoresState extends State<Marcadores> {
  late GoogleMapController mapController;
  final Set<Marker> markers = new Set(); //markers for google map
  static const LatLng showLocation = const LatLng(
      -16.326877819296733, -48.94224925981115); //location to show in map

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  late BitmapDescriptor myIcon;

  @override
  void initState() {
    BitmapDescriptor.fromAssetImage(
            // ignore: prefer_const_constructors
            ImageConfiguration(size: Size(7, 7)),
            'assets/images/car_icon.png')
        .then((onValue) {
      myIcon = onValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GoogleMap(
          //Map widget from google_maps_flutter package
          zoomGesturesEnabled: true, //enable Zoom in, out on map
          initialCameraPosition: CameraPosition(
            //innital position in map
            target: showLocation, //initial position
            zoom: 14, //initial zoom level
          ),
          markers: getmarkers(), //markers to show on map
          mapType: MapType.normal, //map type
          onMapCreated: (controller) {
            //method called when map is created
            setState(() {
              mapController = controller;
            });
          },
        ),
        Positioned(
            top: 10.0,
            right: 10,
            child: PopupMenuButton<Text>(
              icon: Icon(
                Icons.filter_alt,
                size: 50,
              ),
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        primary: Color.fromARGB(255, 0, 0, 0),
                        textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              padding: EdgeInsets.only(
                                right: 10,
                              ),
                              child: Icon(Icons.poll_outlined)),
                          Container(child: Text('Relatórios')),
                        ],
                      ),
                    ),
                  ),
                ];
              },
            )),
        Positioned(
            bottom: 40.0,
            left: 10,
            child: PopupMenuButton<Text>(
              icon: Icon(
                Icons.layers,
                size: 50,
              ),
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        primary: Color.fromARGB(255, 0, 0, 0),
                        textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).push<int>(
                          MaterialPageRoute(
                            builder: (_) => Graficos(),
                          ),
                        );
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              padding: EdgeInsets.only(
                                right: 10,
                              ),
                              child: Icon(Icons.poll_outlined)),
                          Container(child: Text('Relatórios')),
                        ],
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        primary: Color.fromARGB(255, 0, 0, 0),
                        textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              padding: EdgeInsets.only(
                                right: 10,
                              ),
                              child: Icon(Icons.manage_accounts)),
                          Container(child: Text('Gestor')),
                        ],
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        primary: Color.fromARGB(255, 0, 0, 0),
                        textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              padding: EdgeInsets.only(
                                right: 10,
                              ),
                              child: Icon(Icons.send_to_mobile_outlined)),
                          Container(child: Text('Comandos')),
                        ],
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        primary: Color.fromARGB(255, 0, 0, 0),
                        textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              padding: EdgeInsets.only(
                                right: 10,
                              ),
                              child: Icon(Icons.query_stats)),
                          Container(child: Text('Indicadores')),
                        ],
                      ),
                    ),
                  ),
                ];
              },
            )),
      ],
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
          title: 'Bridge Labs ',
          snippet: 'Empresa',
        ),
        icon: BitmapDescriptor.defaultMarker,
      ));
      markers.add(Marker(
        //add third marker
        markerId: MarkerId(showLocation.toString()),
        position: LatLng(
            -16.32394777158907, -48.948933767049596), //position of marker
        infoWindow: InfoWindow(
          //popup info
          title: 'Brasil Park Shopping',
          snippet: 'Shopping',
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));

      //add more markers here
    });

    return markers;
  }
}
