// ignore_for_file: deprecated_member_use
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:teste/brb/brb_botoes.dart';
import 'package:teste/crud/crud_page.dart';
import 'package:teste/crud/views/user_list.dart';
import 'package:teste/crud2/crud2.dart';
import 'package:teste/dblock_2/dblock_2_home.dart';
import 'package:teste/dblock_2/login_page_dblock2.dart';
import 'package:teste/home2_page.dart';
import 'package:teste/home_page.dart';
import 'package:teste/jogo_da_velha/jogo_da_velha%5D.dart';
import 'package:teste/lista_de_contatos/views/contact_list.dart';
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
import 'package:teste/telas/template/app.dart';

class HomeBotoes extends StatelessWidget {
  const HomeBotoes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Container(
        color: Color.fromARGB(255, 255, 255, 255),
        margin: EdgeInsets.all(0),
        width: double.infinity,
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.all(0),
                child: Image.asset(
                  'assets/images/bridge-labs-logo.png',
                  width: 140,
                ),
              ),
            ),
            Center(
              child: ButtonTheme(
                textTheme: ButtonTextTheme.primary,
                buttonColor: Color.fromARGB(255, 0, 9, 88),
                minWidth: 190,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                        builder: (_) => LoginPageDblock2(),
                      ),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Text('Dblock 2'),
                ),
              ),
            ),
            Center(
              child: ButtonTheme(
                textTheme: ButtonTextTheme.primary,
                buttonColor: Color.fromARGB(255, 0, 9, 88),
                minWidth: 190,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).push<int>(
                      MaterialPageRoute(
                        builder: (_) => ReplyApp(),
                      ),
                    );
                  },
                  child: Text('Template'),
                ),
              ),
            ),
            Center(
              child: ButtonTheme(
                textTheme: ButtonTextTheme.primary,
                buttonColor: Color.fromARGB(255, 0, 9, 88),
                minWidth: 190,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => Crud2(),
                      ),
                    );
                  },
                  child: Text('CRUD'),
                ),
              ),
            ),
            Center(
              child: ButtonTheme(
                textTheme: ButtonTextTheme.primary,
                buttonColor: Color.fromARGB(255, 0, 9, 88),
                minWidth: 190,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).push<int>(
                      MaterialPageRoute(
                        builder: (_) => TelasHome(),
                      ),
                    );
                  },
                  child: Text('Telas'),
                ),
              ),
            ),
            Center(
              child: ButtonTheme(
                textTheme: ButtonTextTheme.primary,
                buttonColor: Color.fromARGB(255, 0, 0, 0),
                minWidth: 190,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).push<int>(
                      MaterialPageRoute(
                        builder: (_) => NewPages(),
                      ),
                    );
                  },
                  child: Text('Outros'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
