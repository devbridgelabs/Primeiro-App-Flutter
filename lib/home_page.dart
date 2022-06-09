// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  String nome = 'Title teste';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          // 'Teste', -- OU Utilizar a variavel--
          nome,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 30,
          ),
        ),
        actions: const [
          Center(
            child: Text('X'),
          ),
        ],
      ),
      drawer: Drawer(),
      body: Container(
        width: 200,
        height: 300,
        color: Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: FlatButton(
                onPressed: () {
                  nome:
                  '123';
                },
                child: Text('Button'),
              ),
            ),
            const Text(
              'Teste',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            const Text(
              'Teste',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text('Teste row'),
                Text('Teste row 2'),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
