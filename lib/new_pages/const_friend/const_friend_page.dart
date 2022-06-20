// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class ConstFriendPage extends StatelessWidget {
  const ConstFriendPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meus amigos',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Meus amigos'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyFriend('Teste 1'),
              MyFriend('Teste 2'),
              MyFriend('Teste 3'),
              MyFriend('Teste 4'),
            ],
          ),
        ),
      ),
    );
  }
}

class MyFriend extends StatelessWidget {
  final String text;
  const MyFriend(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: DecoratedBox(
        decoration: BoxDecoration(color: Colors.lightBlueAccent),
        child: Text(text, style: TextStyle(fontSize: 50)),
      ),
    );
  }
}
