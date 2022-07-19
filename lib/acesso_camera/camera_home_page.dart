import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import 'package:teste/acesso_camera/camera_page.dart';

class CameraHomePage extends StatefulWidget {
  const CameraHomePage({Key? key}) : super(key: key);

  @override
  State<CameraHomePage> createState() => _CameraHomePageState();
}

class _CameraHomePageState extends State<CameraHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Page")),
      body: SafeArea(
        child: Center(
            child: ElevatedButton(
          onPressed: () async {
            await availableCameras().then((value) => Navigator.push(context,
                MaterialPageRoute(builder: (_) => CameraPage(cameras: value))));
          },
          child: const Text("Tirar uma foto"),
        )),
      ),
    );
  }
}
