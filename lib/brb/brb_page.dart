// ignore_for_file: deprecated_member_use, prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';

class BrbPage extends StatelessWidget {
  const BrbPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return new Container(
      decoration: new BoxDecoration(color: Color.fromARGB(255, 0, 3, 94)),
      child: new Center(
          child: Image(
        image: NetworkImage(
            'https://campanhas.brb.com.br/financiamentodelotes/images/Marca-BRB_Preferencial-Branca.png'),
        width: size.width * 0.57,
      )),
    );
  }
}
