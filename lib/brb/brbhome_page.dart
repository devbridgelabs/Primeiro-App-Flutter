// ignore_for_file: deprecated_member_use, prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';
import 'package:teste/brb/brb_page.dart';

class BrbhomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return new Container(
      decoration: new BoxDecoration(
        color: Color.fromARGB(199, 20, 60, 169),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: 0,
              bottom: 0,
              right: 0,
              top: size.height * 0.0,
            ),
            child: Image.asset(
              'assets/images/brb-logo-branca-sem-texto.png',
              width: size.height * 0.187,
            ),
          ),
          Container(
            height: size.height * 0.08,
          ),
          Container(
            child: Icon(
              Icons.account_circle_rounded,
              size: size.height * 0.157,
              color: Color.fromARGB(255, 1, 1, 88),
            ),
          ),
          Text(
            'Yago R.',
            style: TextStyle(
              decoration: TextDecoration.none,
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: size.height * 0.020,
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
                color: Color.fromARGB(255, 176, 176, 176),
                fontSize: size.height * 0.018,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 0,
              bottom: size.height * 0.15,
              right: 0,
              top: size.height * 0.1,
            ),
            child: ButtonTheme(
              minWidth: size.height * 0.20,
              height: size.height * 0.072,
              child: RaisedButton(
                color: Color.fromARGB(255, 0, 213, 255),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                textColor: Colors.white,
                onPressed: () {
                  Navigator.of(context).push<int>(
                    MaterialPageRoute(
                      builder: (_) => BrbPage(),
                    ),
                  );
                },
                child: Text(
                  'Entrar',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Color.fromARGB(255, 251, 251, 251),
                    fontSize: size.height * 0.027,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: size.height / 6.5,
            margin: new EdgeInsets.only(
              left: 0,
              bottom: size.height * 0.035,
              right: 0,
              top: size.height * 0.0,
            ),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: new EdgeInsets.only(
                    left: size.height * 0.015,
                    bottom: size.height * 0,
                    right: size.height * 0.015,
                    top: size.height * 0.0,
                  ),
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height / 6.5,
                  width: MediaQuery.of(context).size.height / 6.5,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 0, 4, 87),
                    borderRadius: BorderRadius.circular(10),
                    // ignore: prefer_const_literals_to_create_immutables
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 25.0,
                        spreadRadius: 2,
                      )
                    ],
                  ),
                  child: Container(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.task,
                        size: size.height * 0.047,
                        color: Color.fromARGB(255, 0, 213, 255),
                      ),
                      Text(
                        'Abrir\nConta',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Color.fromARGB(255, 251, 251, 251),
                          fontSize: size.height * 0.018,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )),
                ),
                Container(
                  margin: new EdgeInsets.only(
                    left: size.height * 0.015,
                    bottom: size.height * 0,
                    right: size.height * 0.015,
                    top: size.height * 0.0,
                  ),
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height / 6.5,
                  width: MediaQuery.of(context).size.height / 6.5,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 0, 4, 87),
                    borderRadius: BorderRadius.circular(10),
                    // ignore: prefer_const_literals_to_create_immutables
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 25.0,
                        spreadRadius: 2,
                      )
                    ],
                  ),
                  child: Container(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.qr_code_2,
                        size: size.height * 0.047,
                        color: Color.fromARGB(255, 0, 213, 255),
                      ),
                      Text(
                        'BRB\nCode',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Color.fromARGB(255, 251, 251, 251),
                          fontSize: size.height * 0.018,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )),
                ),
                Container(
                  margin: new EdgeInsets.only(
                    left: size.height * 0.015,
                    bottom: size.height * 0,
                    right: size.height * 0.015,
                    top: size.height * 0.0,
                  ),
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height / 6.5,
                  width: MediaQuery.of(context).size.height / 6.5,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 0, 4, 87),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 25.0,
                        spreadRadius: 2,
                      )
                    ],
                  ),
                  child: Container(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.monetization_on_outlined,
                        size: size.height * 0.047,
                        color: Color.fromARGB(255, 0, 213, 255),
                      ),
                      Text(
                        'Simulador\nConsignado',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Color.fromARGB(255, 251, 251, 251),
                          fontSize: size.height * 0.018,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )),
                ),
                Container(
                  margin: new EdgeInsets.only(
                    left: size.height * 0.015,
                    bottom: size.height * 0,
                    right: size.height * 0.015,
                    top: size.height * 0.0,
                  ),
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height / 6.5,
                  width: MediaQuery.of(context).size.height / 6.5,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 0, 4, 87),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 25.0,
                        spreadRadius: 2,
                      )
                    ],
                  ),
                  child: Container(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.dialer_sip,
                        size: size.height * 0.047,
                        color: Color.fromARGB(255, 0, 213, 255),
                      ),
                      Text(
                        'Telefones\nBRB',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Color.fromARGB(255, 251, 251, 251),
                          fontSize: size.height * 0.018,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
