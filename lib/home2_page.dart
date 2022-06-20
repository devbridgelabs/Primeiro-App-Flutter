import 'package:flutter/material.dart';

class Home2Page extends StatefulWidget {
  const Home2Page({Key? key}) : super(key: key);

  @override
  State<Home2Page> createState() => _Home2PageState();
}

class _Home2PageState extends State<Home2Page> {
  String nome = 'Title teste';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(nome),
      ),
      body: Column(
        children: [
          Column(
            children: [
              Text('Opção de título 1'),
              // ignore: deprecated_member_use
              FlatButton(
                onPressed: () {
                  setState(() {
                    nome = 'Primeiro título';
                  });
                },
                child: Text('Button'),
              ),
            ],
          ),
          Column(
            children: [
              Text('Opção de título 2'),
              // ignore: deprecated_member_use
              FlatButton(
                onPressed: () {
                  setState(() {
                    nome = 'Segundo título';
                  });
                },
                child: Text('Button'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
