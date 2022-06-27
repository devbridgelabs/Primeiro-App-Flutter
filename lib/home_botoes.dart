// ignore_for_file: deprecated_member_use
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:teste/brb/brb_botoes.dart';
import 'package:teste/crud/crud_page.dart';
import 'package:teste/crud/views/user_list.dart';
import 'package:teste/home2_page.dart';
import 'package:teste/home_page.dart';
import 'package:teste/listas/carousel_page.dart';
import 'package:teste/listas/listas_page.dart';
import 'package:teste/listas/row_e_column_page.dart';
import 'package:teste/main.dart';
import 'package:teste/new_pages/card/card_page.dart';
import 'package:teste/new_pages/conversor_de_moedas/conversor_de_moedas_page.dart';
import 'package:teste/new_pages/new_pages.dart';
import 'package:teste/paginas/categorias_page.dart';
import 'package:teste/paginas/media_query_page.dart';
import 'package:teste/paginas/pessoa_page.dart';
import 'package:teste/paginas/produtos_page.dart';
import 'package:teste/telas/telas_home.dart';

class HomeBotoes extends StatelessWidget {
  const HomeBotoes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Container(
        margin: EdgeInsets.all(0),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Container(
              margin: EdgeInsets.all(0),
              child: Image.asset(
                'assets/images/bridge-labs-logo.png',
                width: 170,
              ),
            ),
            RaisedButton(
              onPressed: () async {
                print('Antes');
                final idPessoa = await Navigator.of(context).push<int>(
                  MaterialPageRoute(
                    builder: (_) => BrbBotoes(),
                  ),
                );
                print('Id retornado: $idPessoa');
              },
              child: Text('BRB'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).push<int>(
                  MaterialPageRoute(
                    builder: (_) => Home2Page(),
                  ),
                );
              },
              child: Text('Alteração de título'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).push<int>(
                  MaterialPageRoute(
                    builder: (_) => ListasPage(),
                  ),
                );
              },
              child: Text('Lista'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).push<int>(
                  MaterialPageRoute(
                    builder: (_) => CarouselPage(),
                  ),
                );
              },
              child: Text('Carousel'),
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
                    builder: (_) => MyApp(),
                  ),
                );
              },
              child: Text('Contador'),
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
                    builder: (_) => CrudPage(),
                  ),
                );
              },
              child: Text('CRUD'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).push<int>(
                  MaterialPageRoute(
                    builder: (_) => TelasHome(),
                  ),
                );
              },
              child: Text('Telas'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).push<int>(
                  MaterialPageRoute(
                    builder: (_) => NewPages(),
                  ),
                );
              },
              child: Text('Outros'),
            ),
          ],
        ),
      ),
    );
  }
}
