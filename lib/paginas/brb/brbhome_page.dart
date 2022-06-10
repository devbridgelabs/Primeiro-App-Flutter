// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class BrbhomePage extends StatelessWidget {
  String nome = 'Title teste';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      body: Container(
        width: double.infinity,
        height: 700,
        color: Color.fromARGB(255, 0, 3, 94),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: FlatButton(
                onPressed: () {
                  nome:
                  '123';
                },
                child: const Image(
                  image: NetworkImage(
                      'https://campanhas.brb.com.br/blackfriday/images/BRB-Banco-de-Bras%C3%ADlia-branco-sem-assinatura.png'),
                  width: 130,
                  height: 130,
                ),
              ),
            ),
            const Image(
              image: NetworkImage(
                  'https://cdn-icons.flaticon.com/png/512/552/premium/552721.png?token=exp=1654787179~hmac=415687e073529431dfb9c6dbabc8bb47'),
              width: 130,
              height: 130,
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
