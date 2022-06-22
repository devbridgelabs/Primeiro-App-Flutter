// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:teste/crud/views/user_list.dart';
import 'package:teste/new_pages/card/card_page.dart';
import 'package:teste/new_pages/const_friend/const_friend_page.dart';
import 'package:teste/new_pages/contador/contador_page.dart';
import 'package:teste/new_pages/conversor_de_moedas/conversor_de_moedas_page.dart';
import 'package:teste/new_pages/qr_code/qr_code_page.dart';
import 'package:teste/new_pages/responsividade/responsividade02_page.dart';
import 'package:teste/new_pages/responsividade/responsividade03_page.dart';
import 'package:teste/new_pages/responsividade/responsividade_page.dart';

class NewPages extends StatelessWidget {
  const NewPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            RaisedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => ResponsividadePage(),
                  ),
                );
              },
              child: Text('Responsividade 01'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => Responsividade02Page(),
                  ),
                );
              },
              child: Text('Responsividade 02'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => Responsividade03Page(),
                  ),
                );
              },
              child: Text('Responsividade 03'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => CardPage(),
                  ),
                );
              },
              child: Text('Card'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => ConstFriendPage(),
                  ),
                );
              },
              child: Text('Const Friend'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => ContadorPage(),
                  ),
                );
              },
              child: Text('Contador'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => QrCodePage(),
                  ),
                );
              },
              child: Text('Leitor de QrCode'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => ConversorDeMoedasPage(),
                  ),
                );
              },
              child: Text('Conversor de moedas'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => UserList(),
                  ),
                );
              },
              child: Text('CRUD'),
            ),
          ],
        ),
      ),
    );
  }
}
