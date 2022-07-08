import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:teste/lista_de_contatos/domain/entities/contact.dart';

import 'package:teste/lista_de_contatos/contact_home.dart';
import 'package:teste/lista_de_contatos/views/contact_list_back.dart';

class ContactList extends StatelessWidget {
  final _back = ContactListBack();

  CircleAvatar circleAvatar(String url) {
    try {
      return CircleAvatar(backgroundImage: NetworkImage(url));
    } catch (e) {
      return CircleAvatar(child: Icon(Icons.person));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Lista de Contatos'),
          actions: [
            IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  Navigator.of(context).pushNamed(ContactHome.CONTACT_FORM);
                })
          ],
        ),
        body: Observer(builder: (context) {
          return FutureBuilder(
              future: _back.list,
              builder: (context, futuro) {
                if (!futuro.hasData) {
                  return CircularProgressIndicator();
                } else {
                  List<Contact> lista = futuro.data as List<Contact>;
                  return ListView.builder(
                    itemCount: lista.length,
                    itemBuilder: (context, i) {
                      var contato = lista[i];
                      return ListTile(
                        leading: circleAvatar(contato.urlAvatar),
                        title: Text(contato.nome),
                        subtitle: Text(contato.telefone),
                        trailing: Container(
                          width: 100,
                          child: Row(
                            children: [
                              IconButton(
                                  icon: Icon(Icons.edit), onPressed: null),
                              IconButton(
                                  icon: Icon(Icons.delete), onPressed: null),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                }
              });
        }));
  }
}
