// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:teste/crud/views/user_list.dart';
import 'package:teste/listas/row_e_column_page.dart';
import 'package:teste/main.dart';
import 'package:teste/new_pages/card/card_page.dart';
import 'package:teste/new_pages/const_friend/const_friend_page.dart';
import 'package:teste/new_pages/contador/contador_page.dart';
import 'package:teste/new_pages/conversor_de_moedas/conversor_de_moedas_page.dart';
import 'package:teste/new_pages/responsividade/responsividade02_page.dart';
import 'package:teste/new_pages/responsividade/responsividade03_page.dart';
import 'package:teste/new_pages/responsividade/responsividade_page.dart';
import 'package:teste/paginas/media_query_page.dart';
import 'package:teste/paginas/pessoa_page.dart';

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
          ],
        ),
      ),
    );
  }
}
