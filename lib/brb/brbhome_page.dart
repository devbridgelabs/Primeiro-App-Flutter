// ignore_for_file: deprecated_member_use, prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';
import 'package:teste/brb/brb_page.dart';

class BrbhomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return new Container(
      decoration: new BoxDecoration(color: Color.fromARGB(255, 0, 3, 94)),
      child: Column(
        children: [
          Container(
            height: size.height * 0.08,
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Image.asset(
              'assets/images/brb-logo-branca-sem-texto.png',
              width: 150,
            ),
          ),
          Container(
            height: size.height * 0.08,
          ),
          Container(
            child: Container(
              child: Icon(
                Icons.account_circle_rounded,
                size: size.height * 0.15,
              ),
            ),
          ),
          Text(
            'Yago R.',
            style: TextStyle(
              decoration: TextDecoration.none,
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: size.height * 0.018,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 0,
              bottom: 0,
              right: 0,
              top: size.height * 0.013,
            ),
            child: Text(
              '***.810.381-**',
              style: TextStyle(
                decoration: TextDecoration.none,
                color: Color.fromARGB(255, 152, 152, 152),
                fontSize: size.height * 0.015,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 0,
              bottom: 0,
              right: 0,
              top: size.height * 0.1,
            ),
            child: RaisedButton(
              onPressed: () {
                Navigator.of(context).push<int>(
                  MaterialPageRoute(
                    builder: (_) => BrbPage(),
                  ),
                );
              },
              child: Text('Entrar'),
            ),
          ),
        ],
      ),
    );
  }
}
