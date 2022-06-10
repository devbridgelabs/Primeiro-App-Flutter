import 'package:flutter/material.dart';

class BrbPage extends StatelessWidget {
  const BrbPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: new BoxDecoration(color: Color.fromARGB(255, 0, 3, 94)),
      child: new Center(
          child: const Image(
        image: NetworkImage(
            'https://campanhas.brb.com.br/financiamentodelotes/images/Marca-BRB_Preferencial-Branca.png'),
        width: 200,
        height: 200,
      )),
    );
  }
}
