import 'package:flutter/material.dart';
import 'package:qrcode_reader/qrcode_reader.dart';

class QrCodePage extends StatelessWidget {
  const QrCodePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Leitor	de	QR	Code',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Leitor	de	QR	Code'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _captureQR() {
    Future<String> futureString = QRCodeReader().scan();
    futureString.then((qrText) {
      _showDialog(qrText);
    });
  }

  void _showDialog(String qrtext) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text("Texto do QR Code"),
          content: new Text(qrtext),
          actions: <Widget>[
            ElevatedButton(
              child: new Text("Fechar"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text('Ler QR Code'),
              onPressed: () {
                _captureQR();
              },
            )
          ],
        ),
      ),
    );
  }
}
