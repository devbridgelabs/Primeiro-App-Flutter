// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class PessoaPage extends StatelessWidget {
  const PessoaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Teste'),
      ),
      body: Container(
        child: FlatButton(
          child: Text('Voltar ${ModalRoute.of(context)?.settings.arguments}'),
          onPressed: () {
            // Navigator.pop(context, 1); -- OU --
            Navigator.of(context).pop(999);
          },
        ),
      ),
    );
  }
}
