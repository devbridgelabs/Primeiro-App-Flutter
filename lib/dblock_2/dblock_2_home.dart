import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:teste/dblock_2/distancia_entre_pontos.dart';
import 'package:teste/dblock_2/marcadores.dart';
import 'package:teste/dblock_2/rotas.dart';
import 'package:teste/dblock_2/rotas2.dart';

class Dblock2Home extends StatefulWidget {
  const Dblock2Home({Key? key}) : super(key: key);

  @override
  State<Dblock2Home> createState() => _Dblock2HomeState();
}

class _Dblock2HomeState extends State<Dblock2Home> {
  late GoogleMapController mapController;
  final Set<Marker> markers = new Set(); //markers for google map
  static const LatLng showLocation = const LatLng(
      -16.326877819296733, -48.94224925981115); //location to show in map

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          MediaQuery.of(context).size.height * 0.072,
        ),
        child: AppBar(
          title: Text('Mapa'),
          actions: [
            PopupMenuButton<Text>(
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.of(context).push<int>(
                          MaterialPageRoute(
                            builder: (_) => Marcadores(),
                          ),
                        );
                      },
                      child: Text('Marcadores'),
                    ),
                  ),
                  PopupMenuItem(
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.of(context).push<int>(
                          MaterialPageRoute(
                            builder: (_) => Rotas(),
                          ),
                        );
                      },
                      child: Text('Rotas'),
                    ),
                  ),
                  PopupMenuItem(
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.of(context).push<int>(
                          MaterialPageRoute(
                            builder: (_) => DistanciaEntrePontos(),
                          ),
                        );
                      },
                      child: Text('Distância entre pontos'),
                    ),
                  ),
                  PopupMenuItem(
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.of(context).push<int>(
                          MaterialPageRoute(
                            builder: (_) => Rotas2(),
                          ),
                        );
                      },
                      child: Text('Rotas 2'),
                    ),
                  ),
                  // PopupMenuItem(
                  //   child: TextButton(
                  //     style: TextButton.styleFrom(
                  //       primary: Color.fromARGB(255, 0, 0, 0),
                  //     ),
                  //     onPressed: () {
                  //       Navigator.of(context).push<int>(
                  //         MaterialPageRoute(
                  //           builder: (_) => Marcadores(),
                  //         ),
                  //       );
                  //     },
                  //     child: Text('Marcadores'),
                  //   ),
                  // ),
                ];
              },
            )
          ],
        ),
      ),
      body: GoogleMap(
        //Map widget from google_maps_flutter package
        zoomGesturesEnabled: true, //enable Zoom in, out on map
        initialCameraPosition: CameraPosition(
          //innital position in map
          target: showLocation, //initial position
          zoom: 18, //initial zoom level
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
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.12,
              child: const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'DBlock 2',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
            ),
            ListTile(
              title: const Text(
                'Carro 1 - NKJ2I41',
                style: TextStyle(
                  fontSize: 17,
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),
              ),
            ),
          ],
        ),
      ),
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

      markers.add(Marker(
        //add second marker
        markerId: MarkerId(showLocation.toString()),
        position: LatLng(
            -16.32715581595128, -48.942528209543106), //position of marker
        infoWindow: InfoWindow(
          //popup info
          title: 'Marker Title Second ',
          snippet: 'My Custom Subtitle',
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));

      markers.add(Marker(
        //add third marker
        markerId: MarkerId(showLocation.toString()),
        position: LatLng(
            -16.327382331451744, -48.943182668529616), //position of marker
        infoWindow: InfoWindow(
          //popup info
          title: 'Marker Title Third ',
          snippet: 'My Custom Subtitle',
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));

      //add more markers here
    });

    return markers;
  }
}

// Scaffold(
//       appBar: PreferredSize(
//           preferredSize: Size.fromHeight(
//             MediaQuery.of(context).size.height * 0.072,
//           ),
//           child: AppBar(title: Text('Mapa'))),
//       body: const Center(
//         child: Text('My Page!'),
//       ),
//       drawer: Drawer(
//         // Add a ListView to the drawer. This ensures the user can scroll
//         // through the options in the drawer if there isn't enough vertical
//         // space to fit everything.
//         child: ListView(
//           // Important: Remove any padding from the ListView.
//           padding: EdgeInsets.zero,
//           children: [
//             Container(
//               height: MediaQuery.of(context).size.height * 0.162,
//               child: const DrawerHeader(
//                 decoration: BoxDecoration(
//                   color: Colors.blue,
//                 ),
//                 child: Text(
//                   'DBlock 2',
//                   style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                       color: Color.fromARGB(255, 255, 255, 255)),
//                 ),
//               ),
//             ),
//             ListTile(
//               title: const Text(
//                 'Carro 1 - NKJ2I41',
//                 style: TextStyle(
//                   fontSize: 17,
//                   color: Color.fromARGB(255, 0, 0, 0),
//                 ),
//               ),
//             ),
//             ListTile(
//               title: const Text(
//                 'Carro 2 - NKJ2I41',
//                 style: TextStyle(
//                   fontSize: 17,
//                   color: Color.fromARGB(255, 0, 0, 0),
//                 ),
//               ),
//             ),
//             ListTile(
//               title: const Text(
//                 'Carro 3 - NKJ2I41',
//                 style: TextStyle(
//                   fontSize: 17,
//                   color: Color.fromARGB(255, 0, 0, 0),
//                 ),
//               ),
//             ),
//             ListTile(
//               title: const Text(
//                 'Carro 4 - NKJ2I41',
//                 style: TextStyle(
//                   fontSize: 17,
//                   color: Color.fromARGB(255, 0, 0, 0),
//                 ),
//               ),
//             ),
//             ListTile(
//               title: const Text(
//                 'Carro 5 - NKJ2I41',
//                 style: TextStyle(
//                   fontSize: 17,
//                   color: Color.fromARGB(255, 0, 0, 0),
//                 ),
//               ),
//             ),
//             ListTile(
//               title: const Text(
//                 'Carro 6 - NKJ2I41',
//                 style: TextStyle(
//                   fontSize: 17,
//                   color: Color.fromARGB(255, 0, 0, 0),
//                 ),
//               ),
//             ),
//             ListTile(
//               title: const Text(
//                 'Carro 7 - NKJ2I41',
//                 style: TextStyle(
//                   fontSize: 17,
//                   color: Color.fromARGB(255, 0, 0, 0),
//                 ),
//               ),
//             ),
//             ListTile(
//               title: const Text(
//                 'Carro 1 - NKJ2I41',
//                 style: TextStyle(
//                   fontSize: 17,
//                   color: Color.fromARGB(255, 0, 0, 0),
//                 ),
//               ),
//             ),
//             ListTile(
//               title: const Text(
//                 'Carro 8 - NKJ2I41',
//                 style: TextStyle(
//                   fontSize: 17,
//                   color: Color.fromARGB(255, 0, 0, 0),
//                 ),
//               ),
//             ),
//             ListTile(
//               title: const Text(
//                 'Carro 9 - NKJ2I41',
//                 style: TextStyle(
//                   fontSize: 17,
//                   color: Color.fromARGB(255, 0, 0, 0),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
