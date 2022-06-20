// ignore_for_file: deprecated_member_use
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:teste/brb/brb_botoes.dart';
import 'package:teste/home2_page.dart';
import 'package:teste/home_page.dart';
import 'package:teste/listas/carousel_page.dart';
import 'package:teste/listas/listas_page.dart';
import 'package:teste/listas/row_e_column_page.dart';
import 'package:teste/new_pages/new_pages.dart';
import 'package:teste/paginas/categorias_page.dart';
import 'package:teste/paginas/media_query_page.dart';
import 'package:teste/paginas/pessoa_page.dart';
import 'package:teste/paginas/produtos_page.dart';

class HomeBotoes extends StatelessWidget {
  const HomeBotoes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navegacao'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: Image.asset(
                'assets/images/brb-logo.png',
                width: 150,
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
                    builder: (_) => NewPages(),
                  ),
                );
              },
              child: Text('New Pages'),
            ),
            RaisedButton(
              onPressed: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //   builder: (context) => ProdutosPage(),
                // ));
                // Navigator.of(context).pushAndRemoveUntil(
                //     MaterialPageRoute(
                //       builder: (context) => ProdutosPage(),
                //     ),
                //     (route) => false);

                Navigator.of(context).pushNamed('/produtos');
                Navigator.of(context).pushNamedAndRemoveUntil(
                  '/produtos',
                  ModalRoute.withName('/'),
                );
              },
              child: Text('Produtos'),
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
              onPressed: () async {
                print('Antes');
                final idPessoa = await Navigator.of(context).push<int>(
                  MaterialPageRoute(
                    builder: (_) => PessoaPage(),
                    settings: RouteSettings(arguments: 7),
                  ),
                );
                print('Id retornado: $idPessoa');
              },
              child: Text('Pessoa'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).push<int>(
                  MaterialPageRoute(
                    builder: (_) => MediaQueryPage(),
                  ),
                );
              },
              child: Text('Media Queries'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).push<int>(
                  MaterialPageRoute(
                    builder: (_) => RowEColumnPage(),
                  ),
                );
              },
              child: Text('Row e Column'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).push<int>(
                  MaterialPageRoute(
                    builder: (_) => ListasPage(),
                  ),
                );
              },
              child: Text('Listas'),
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
          ],
        ),
      ),
    );
  }
}
