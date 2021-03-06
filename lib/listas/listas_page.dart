// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class ListasPage extends StatelessWidget {
  const ListasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listas'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            print(index);
            return ListTile(
              title: Text('Teste $index'),
              leading: Icon(Icons.account_circle_rounded),
            );
          },
        ),
      ),
    );
  }
}
