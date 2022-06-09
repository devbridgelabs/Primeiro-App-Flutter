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
          Text('Alterando nome'),
          // ignore: deprecated_member_use
          FlatButton(
            onPressed: () {
              setState(() {
                nome = '123 alt';
              });
            },
            child: Text('Button'),
          ),
        ],
      ),
    );
  }
}
