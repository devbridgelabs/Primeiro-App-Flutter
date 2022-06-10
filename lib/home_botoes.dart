// ignore_for_file: deprecated_member_use
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:teste/home_page.dart';
import 'package:teste/paginas/brb/brb_page.dart';
import 'package:teste/paginas/brb/brbhome_page.dart';
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
            RaisedButton(
              onPressed: () async {
                print('Antes');
                final idPessoa = await Navigator.of(context).push<int>(
                  MaterialPageRoute(
                    builder: (_) => BrbPage(),
                  ),
                );
                print('Id retornado: $idPessoa');
              },
              child: Text('BRB'),
            ),
            RaisedButton(
              onPressed: () async {
                print('Antes');
                final idPessoa = await Navigator.of(context).push<int>(
                  MaterialPageRoute(
                    builder: (_) => BrbhomePage(),
                  ),
                );
                print('Id retornado: $idPessoa');
              },
              child: Text('Home BRB'),
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
                Navigator.of(context).pushNamed('/categorias');
              },
              child: Text('Categorias'),
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
          ],
        ),
      ),
    );
  }
}
