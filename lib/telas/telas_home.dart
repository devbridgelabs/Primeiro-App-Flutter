// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:teste/telas/material/app_bar_demo.dart';
import 'package:teste/telas/material/banner_demo.dart';
import 'package:teste/telas/material/bottom_app_bar_demo.dart';
import 'package:teste/telas/material/bottom_navigation_demo.dart';
import 'package:teste/telas/material/material_demo_types.dart';

class TelasHome extends StatelessWidget {
  const TelasHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Telas'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            RaisedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => AppBarDemo(),
                  ),
                );
              },
              child: Text('App Bar'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => BannerDemo(),
                  ),
                );
              },
              child: Text('Banner'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => BottomAppBarDemo(),
                  ),
                );
              },
              child: Text('Barra de navegação inferior'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => BottomNavigationDemo(
                      type: BottomNavigationDemoType.withLabels,
                      restorationId: 'bottom_navigation_labels_demo',
                    ),
                  ),
                );
              },
              child: Text('Barra de navegação inferior 2'),
            ),
          ],
        ),
      ),
    );
  }
}
