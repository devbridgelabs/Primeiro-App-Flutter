import 'package:flutter/material.dart';

class ContadorPage extends StatelessWidget {
  const ContadorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contador',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Contador'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ItemCounter('Teste')],
          ),
        ),
      ),
    );
  }
}

class ItemCounter extends StatefulWidget {
  final String name;
  ItemCounter(this.name);

  @override
  _ItemCounterState createState() => _ItemCounterState();
}

class _ItemCounterState extends State<ItemCounter> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          setState(() {
            count++;
          });
        },
        child: Text('${widget.name}: $count', style: TextStyle(fontSize: 50)));
  }
}
