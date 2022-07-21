import 'package:flutter/material.dart';
import 'package:teste/map_laucher/show_directions.dart';
import 'package:teste/map_laucher/show_marker.dart';

class MapLauncherDemo extends StatefulWidget {
  @override
  _MapLauncherDemoState createState() => _MapLauncherDemoState();
}

enum LaunchMode { marker, directions }

class _MapLauncherDemoState extends State<MapLauncherDemo> {
  int selectedTabIndex = 0;

  List<Widget> widgets = [ShowMarker(), ShowDirections()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: widgets[selectedTabIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedTabIndex,
          onTap: (newTabIndex) => setState(() {
            selectedTabIndex = newTabIndex;
          }),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.pin_drop),
              label: 'Marcador',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.directions),
              label: 'Rotas',
            ),
          ],
        ),
      ),
    );
  }
}
