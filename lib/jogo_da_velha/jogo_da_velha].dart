import 'package:flutter/material.dart';
import 'package:teste/jogo_da_velha/core/constants.dart';
import 'package:teste/jogo_da_velha/core/theme_app.dart';
import 'package:teste/jogo_da_velha/pages/game_page.dart';

class JogoDaVelha extends StatelessWidget {
  const JogoDaVelha({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: GAME_TITLE,
      theme: themeApp,
      home: GamePage(),
    );
  }
}
