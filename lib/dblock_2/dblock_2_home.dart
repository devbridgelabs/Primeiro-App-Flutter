// ignore_for_file: deprecated_member_use, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:teste/dblock_2/distancia_entre_pontos.dart';
import 'package:teste/dblock_2/google_maps_rastreamento/order_tracking_page.dart';
import 'package:teste/dblock_2/login_page_dblock2.dart';
import 'package:teste/dblock_2/marcadores.dart';
import 'package:teste/dblock_2/rest_api/screens/home_rest_api.dart';
import 'package:teste/dblock_2/rotas.dart';
import 'package:teste/dblock_2/rotas2.dart';
import 'package:teste/dblock_2/tabela/tabela.dart';
import 'package:teste/dblock_2/test_page.dart';

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
                            builder: (_) => Marcadores(),
                          ),
                        );
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              padding: EdgeInsets.only(
                                left: 0,
                                bottom: 0,
                                right: 10,
                                top: 0,
                              ),
                              child: Icon(Icons.bookmark_rounded)),
                          Container(child: Text('Marcadores')),
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
                      onPressed: () {
                        Navigator.of(context).push<int>(
                          MaterialPageRoute(
                            builder: (_) => Rotas(),
                          ),
                        );
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              padding: EdgeInsets.only(
                                left: 0,
                                bottom: 0,
                                right: 10,
                                top: 0,
                              ),
                              child: Icon(Icons.add_road)),
                          Container(child: Text('Rotas')),
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
                      onPressed: () {
                        Navigator.of(context).push<int>(
                          MaterialPageRoute(
                            builder: (_) => DistanciaEntrePontos(),
                          ),
                        );
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              padding: EdgeInsets.only(
                                left: 0,
                                bottom: 0,
                                right: 10,
                                top: 0,
                              ),
                              child: Icon(Icons.map)),
                          Container(child: Text('Distância entre pontos')),
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
                      onPressed: () {
                        Navigator.of(context).push<int>(
                          MaterialPageRoute(
                            builder: (_) => OrderTrackingPage(),
                          ),
                        );
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              padding: EdgeInsets.only(
                                left: 0,
                                bottom: 0,
                                right: 10,
                                top: 0,
                              ),
                              child: Icon(Icons.airport_shuttle_outlined)),
                          Container(child: Text('Rastreamento ao vivo')),
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
                      onPressed: () {
                        Navigator.of(context).push<int>(
                          MaterialPageRoute(
                            builder: (_) => HomeRestApi(),
                          ),
                        );
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              padding: EdgeInsets.only(
                                left: 0,
                                bottom: 0,
                                right: 10,
                                top: 0,
                              ),
                              child: Icon(Icons.contactless_rounded)),
                          Container(child: Text('API Rest')),
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
                      onPressed: () {
                        Navigator.of(context).push<int>(
                          MaterialPageRoute(
                            builder: (_) => Tabela(),
                          ),
                        );
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              padding: EdgeInsets.only(
                                left: 0,
                                bottom: 0,
                                right: 10,
                                top: 0,
                              ),
                              child: Icon(Icons.table_chart_sharp)),
                          Container(child: Text('Tabela')),
                        ],
                      ),
                    ),
                  ),
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
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.125,
              child: const DrawerHeader(
                padding: EdgeInsets.only(
                  left: 7,
                  bottom: 0,
                  right: 0,
                  top: 6,
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'DBlock 2',
                  style: TextStyle(
                      fontSize: 30,
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
            TextButton(
              style: TextButton.styleFrom(
                primary: Color.fromARGB(255, 0, 0, 0),
                textStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (_) => LoginPageDblock2(),
                  ),
                  (Route<dynamic> route) => false,
                );
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      padding: EdgeInsets.only(
                        left: 0,
                        bottom: 0,
                        right: 10,
                        top: 0,
                      ),
                      child: Icon(Icons.logout)),
                  Container(child: Text('Sair')),
                ],
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
          title: 'Local atual ',
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
            -16.31228202359462, -48.946543928391016), //position of marker
        infoWindow: InfoWindow(
          //popup info
          title: 'Casa',
          snippet: 'Minha casa',
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
