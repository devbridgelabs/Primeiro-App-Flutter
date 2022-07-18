// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Configuracoes extends StatelessWidget {
  const Configuracoes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: ListTile(
        title: Row(
          children: [
            Container(
              padding: EdgeInsets.only(
                left: 0,
                bottom: 0,
                right: 7,
                top: 0,
              ),
              child: Icon(
                Icons.lock_person,
                color: Color.fromARGB(255, 0, 0, 0),
                size: 25,
              ),
            ),
            Text(
              'Mudar senha',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(0, 0, 0, 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
