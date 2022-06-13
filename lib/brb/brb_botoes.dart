// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:teste/brb/brb_page.dart';
import 'package:teste/brb/brbhome_page.dart';

class BrbBotoes extends StatelessWidget {
  const BrbBotoes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
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
                Navigator.of(context).push<int>(
                  MaterialPageRoute(
                    builder: (_) => BrbPage(),
                  ),
                );
              },
              child: Text('BRB Tela inicial'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).push<int>(
                  MaterialPageRoute(
                    builder: (_) => BrbhomePage(),
                  ),
                );
              },
              child: Text('BRB Home'),
            ),
          ],
        ),
      ),
    );
  }
}
