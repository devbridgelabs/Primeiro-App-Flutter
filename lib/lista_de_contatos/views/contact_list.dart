import 'package:flutter/material.dart';
import 'package:teste/lista_de_contatos/database/sqlite/dao/contact_dao_impl.dart';
import 'package:teste/lista_de_contatos/domain/entities/contact.dart';

import 'package:teste/lista_de_contatos/contact_home.dart';

class ContactList extends StatelessWidget {
  Future<List<Contact>> _buscar() async {
    return ContactDAOImpl().find();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _buscar(),
        builder: (context, futuro) {
          if (futuro.hasData) {
            List<Contact> lista = futuro.data as List<Contact>;
            return Scaffold(
                appBar: AppBar(
                  title: Text('Lista de Contatos'),
                  actions: [
                    IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed(ContactHome.CONTACT_FORM);
                        })
                  ],
                ),
                body: ListView.builder(
                  itemCount: lista.length,
                  itemBuilder: (context, i) {
                    var contato = lista[i];
                    var avatar = CircleAvatar(
                      backgroundImage: NetworkImage(contato.urlAvatar),
                    );
                    return ListTile(
                      leading: avatar,
                      title: Text(contato.nome),
                      subtitle: Text(contato.telefone),
                      trailing: Container(
                        width: 100,
                        child: Row(
                          children: [
                            IconButton(icon: Icon(Icons.edit), onPressed: null),
                            IconButton(
                                icon: Icon(Icons.delete), onPressed: null),
                          ],
                        ),
                      ),
                    );
                  },
                ));
          } else {
            return Scaffold();
          }
        });
  }
}
