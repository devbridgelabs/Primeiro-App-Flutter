import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Dblock2Home extends StatefulWidget {
  const Dblock2Home({Key? key}) : super(key: key);

  @override
  State<Dblock2Home> createState() => _Dblock2HomeState();
}

class _Dblock2HomeState extends State<Dblock2Home> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(-16.326870146619214, -48.94223156646994);

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
          child: AppBar(title: Text('Mapa'))),
      body: Center(
        child: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 18,
          ),
        ),
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
              height: MediaQuery.of(context).size.height * 0.162,
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
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
            ListTile(
              title: const Text(
                'Carro 2 - NKJ2I41',
                style: TextStyle(
                  fontSize: 17,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
            ListTile(
              title: const Text(
                'Carro 3 - NKJ2I41',
                style: TextStyle(
                  fontSize: 17,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
            ListTile(
              title: const Text(
                'Carro 4 - NKJ2I41',
                style: TextStyle(
                  fontSize: 17,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
            ListTile(
              title: const Text(
                'Carro 5 - NKJ2I41',
                style: TextStyle(
                  fontSize: 17,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
            ListTile(
              title: const Text(
                'Carro 6 - NKJ2I41',
                style: TextStyle(
                  fontSize: 17,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
            ListTile(
              title: const Text(
                'Carro 7 - NKJ2I41',
                style: TextStyle(
                  fontSize: 17,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
            ListTile(
              title: const Text(
                'Carro 1 - NKJ2I41',
                style: TextStyle(
                  fontSize: 17,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
            ListTile(
              title: const Text(
                'Carro 8 - NKJ2I41',
                style: TextStyle(
                  fontSize: 17,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
            ListTile(
              title: const Text(
                'Carro 9 - NKJ2I41',
                style: TextStyle(
                  fontSize: 17,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
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
