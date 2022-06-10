// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class RowEColumnPage extends StatelessWidget {
  const RowEColumnPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row e Column'),
      ),
      body: Column(
        children: [
          Container(
            color: Color.fromARGB(255, 100, 100, 100),
            width: MediaQuery.of(context).size.width,
            height: 250,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Linha 1',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 23,
                  ),
                ),
                Text(
                  'Linha 2',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 23,
                  ),
                ),
                Text(
                  'Linha 3',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 23,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Color.fromARGB(255, 8, 1, 74),
            width: MediaQuery.of(context).size.width,
            height: 250,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Coluna 1',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 23,
                  ),
                ),
                Text(
                  'Coluna 2',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 23,
                  ),
                ),
                Text(
                  'Coluna 3',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 23,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
