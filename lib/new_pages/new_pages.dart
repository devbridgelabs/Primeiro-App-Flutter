// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:teste/new_pages/responsividade/responsividade02_page.dart';
import 'package:teste/new_pages/responsividade/responsividade03_page.dart';
import 'package:teste/new_pages/responsividade/responsividade_page.dart';
import 'package:teste/paginas/brb/brb_page.dart';

class NewPages extends StatelessWidget {
  const NewPages({Key? key}) : super(key: key);

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
                    builder: (_) => ResponsividadePage(),
                  ),
                );
              },
              child: Text('Responsividade 01'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).push<int>(
                  MaterialPageRoute(
                    builder: (_) => Responsividade02Page(),
                  ),
                );
              },
              child: Text('Responsividade 02'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).push<int>(
                  MaterialPageRoute(
                    builder: (_) => Responsividade03Page(),
                  ),
                );
              },
              child: Text('Responsividade 03'),
            ),
          ],
        ),
      ),
    );
  }
}
