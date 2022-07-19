// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Tabela extends StatefulWidget {
  const Tabela({Key? key}) : super(key: key);

  @override
  State<Tabela> createState() => _TabelaState();
}

class _TabelaState extends State<Tabela> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
            left: 0,
            bottom: 15,
            right: 0,
            top: 25,
          ),
          child: Center(
              child: Text(
            'Tabela de veículos',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          )),
        ),
        DataTable(
          columns: [
            DataColumn(
                label: Text('ID',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
            DataColumn(
                label: Text('Motorista',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
            DataColumn(
                label: Text('Placa',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
          ],
          rows: [
            DataRow(cells: [
              DataCell(Text('1')),
              DataCell(Text('João')),
              DataCell(Text('NKJ2I41')),
            ]),
            DataRow(cells: [
              DataCell(Text('2')),
              DataCell(Text('Lucas')),
              DataCell(Text('NKJ2I41')),
            ]),
            DataRow(cells: [
              DataCell(Text('3')),
              DataCell(Text('José')),
              DataCell(Text('NKJ2I41')),
            ]),
            DataRow(cells: [
              DataCell(Text('4')),
              DataCell(Text('Mateus')),
              DataCell(Text('NKJ2I41')),
            ]),
            DataRow(cells: [
              DataCell(Text('5')),
              DataCell(Text('Rodrigo')),
              DataCell(Text('NKJ2I41')),
            ]),
          ],
        ),
      ],
    );
  }
}
