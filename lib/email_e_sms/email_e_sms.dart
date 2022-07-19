// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class EmailESms extends StatefulWidget {
  const EmailESms({Key? key}) : super(key: key);

  @override
  State<EmailESms> createState() => _EmailESmsState();
}

class _EmailESmsState extends State<EmailESms> {
  get fontSize => null;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Padding(
          //   padding: const EdgeInsets.only(bottom: 15),
          //   child: Text(
          //     'Entre em contato conosco:',
          //     style: TextStyle(
          //       color: Color.fromARGB(255, 0, 0, 0),
          //       fontSize: 29,
          //       fontWeight: FontWeight.bold,
          //     ),
          //   ),
          // ),
          Container(
            margin: EdgeInsets.only(
              left: 7,
              right: 7,
              bottom: 9,
              top: 0,
            ),
            child: RaisedButton(
              child: ListTile(
                title: Text('Enviar mensagem no WhatsApp',
                    style: TextStyle(color: Colors.white)),
                leading: Icon(Icons.whatsapp, color: Colors.white),
              ),
              onPressed: abrirWhatsApp,
              color: Colors.green,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 7,
              right: 7,
              bottom: 9,
              top: 0,
            ),
            child: RaisedButton(
              child: ListTile(
                title: Text('Abrir site da Bridge Labs',
                    style: TextStyle(color: Colors.white)),
                leading: Icon(Icons.computer, color: Colors.white),
              ),
              onPressed: abrirUrl,
              color: Colors.blue,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 7,
              right: 7,
              bottom: 9,
              top: 0,
            ),
            child: RaisedButton(
              child: ListTile(
                title: Text('Enviar E-mail',
                    style: TextStyle(color: Colors.white)),
                leading: Icon(Icons.attach_email, color: Colors.white),
              ),
              onPressed: abrirGmail,
              color: Color.fromARGB(255, 255, 0, 0),
            ),
          ),
          // RaisedButton(
          //   child: Text(
          //     'Abrir o Google Maps',
          //     style: TextStyle(color: Colors.white),
          //   ),
          //   onPressed: abrirGoogleMaps,
          //   color: Colors.greenAccent,
          // ),
          Container(
            margin: EdgeInsets.only(
              left: 7,
              right: 7,
              bottom: 9,
              top: 0,
            ),
            child: RaisedButton(
              child: ListTile(
                title: Text('Enviar mensagem no Messenger',
                    style: TextStyle(color: Colors.white)),
                leading: Icon(Icons.facebook, color: Colors.white),
              ),
              onPressed: abrirMessenger,
              color: Color.fromARGB(255, 0, 28, 99),
            ),
          ),
          // RaisedButton(
          //   child: Text(
          //     'Abrir os Contatos',
          //     style: TextStyle(color: Colors.white),
          //   ),
          //   onPressed: abrirContatos,
          //   color: Colors.purpleAccent,
          // ),
          Container(
            margin: EdgeInsets.only(
              left: 7,
              right: 7,
              bottom: 9,
              top: 0,
            ),
            child: RaisedButton(
              child: ListTile(
                title: Text('Fazer ligação',
                    style: TextStyle(color: Colors.white)),
                leading: Icon(Icons.local_phone, color: Colors.white),
              ),
              onPressed: fazerLigacao,
              color: Colors.black,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 7,
              right: 7,
              bottom: 9,
              top: 0,
            ),
            child: RaisedButton(
              child: ListTile(
                title:
                    Text('Enviar SMS', style: TextStyle(color: Colors.white)),
                leading: Icon(Icons.message, color: Colors.white),
              ),
              onPressed: enviarSms,
              color: Colors.black45,
            ),
          )
        ],
      ),
    );
  }
}

abrirGmail() async {
  final Uri params = Uri(
    scheme: 'mailto',
    path: 'yagoromualdo.yr@gmail.com',
    query: 'subject=Reportar&body=Detalhe aqui qual bug você encontrou: ',
  );
  String url = params.toString();
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    print('Could not launch $url');
  }
}

abrirUrl() async {
  const url = 'https://bridgelabs.com.br/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

abrirWhatsApp() async {
  var whatsappUrl = "whatsapp://send?phone=5562994014971&text=Olá,tudo bem ?";

  if (await canLaunch(whatsappUrl)) {
    await launch(whatsappUrl);
  } else {
    throw 'Could not launch $whatsappUrl';
  }
}

//method to launch maps
abrirGoogleMaps() async {
  const urlMap =
      "https://www.google.com/maps/search/?api=1&query=-22.9732303,-43.2032649";
  if (await canLaunch(urlMap)) {
    await launch(urlMap);
  } else {
    throw 'Could not launch Maps';
  }
}

abrirMessenger() async {
  var messengerUrl = 'http://m.me/yago.romuldovieira';
  if (await canLaunch(messengerUrl)) {
    await launch(messengerUrl);
  } else {
    throw 'Could not launch $messengerUrl';
  }
}

abrirContatos() async {
  const url = 'content://com.android.contacts/contacts';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

fazerLigacao() async {
  const url = "tel:62994014971";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

enviarSms() async {
  const url = "sms:62994014971?body=Olá, tudo bem?";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
