import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:teste/lista_de_contatos/views/contact_form.dart';
import 'package:teste/lista_de_contatos/contact_home.dart';

class ContactList extends StatelessWidget {
  final lista = [
    {
      'nome': "Teste 1",
      'telefone': '(62) 9 0000-0000',
      'avatar':
          'https://cdn-icons.flaticon.com/png/512/4526/premium/4526363.png?token=exp=1657044378~hmac=6aca9f4a918488422c02ace007f2fd45'
    },
    {
      'nome': "Teste 2",
      'telefone': '(62) 9 0000-0001',
      'avatar': 'https://cdn-icons-png.flaticon.com/512/4526/4526123.png'
    },
    {
      'nome': "Teste 3",
      'telefone': '(62) 9 0000-0002',
      'avatar': 'https://cdn-icons-png.flaticon.com/512/7960/7960131.png'
    }
  ];

  // Future<List<Map<String, dynamic>>>
  void _buscar() async {
    String path = join(await getDatabasesPath(), 'contact_db');
    Database db = await openDatabase(path, version: 1, onCreate: (db, v) {
      // db.execute(sql);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de contatos'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => ContactForm(),
                ),
              );
              // Navigator.of(context).pushNamed(ContactHome.CONTACT_FORM);
            },
          )
        ],
      ),
      body: ListView.builder(
        itemCount: lista.length,
        itemBuilder: (context, index) {
          var contato = lista[index];
          var avatar = CircleAvatar(
            backgroundImage: NetworkImage(contato['avatar']!),
          );
          return ListTile(
            leading: avatar,
            title: Text(contato['nome']!),
            subtitle: Text(contato['telefone']!),
            trailing: Container(
              width: 100,
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.edit),
                    color: Color.fromARGB(255, 233, 159, 0),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.delete),
                    color: Color.fromARGB(255, 192, 17, 5),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
