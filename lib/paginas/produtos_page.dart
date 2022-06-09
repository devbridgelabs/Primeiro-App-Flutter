// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class ProdutosPage extends StatelessWidget {
  const ProdutosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Produtos'),
      ),
      body: Container(
        child: FlatButton(
          onPressed: () {
            if (Navigator.of(context).canPop()) {
              Navigator.of(context).pop();
            } else {
              print('Não foi possível');
            }
          },
          child: Text('Fechar tela'),
        ),
      ),
    );
  }
}
