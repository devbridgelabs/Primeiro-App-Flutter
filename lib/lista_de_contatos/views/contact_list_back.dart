import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:teste/lista_de_contatos/contact_home.dart';
import 'package:teste/lista_de_contatos/domain/entities/contact.dart';
import 'package:teste/lista_de_contatos/domain/services/contact_service.dart';

part 'contact_list_back.g.dart';

class ContactListBack = _ContactListBack with _$ContactListBack;

abstract class _ContactListBack with Store {
  var _service = GetIt.I.get<ContactService>();

  //lista de contatos
  @observable
  late Future<List<Contact>> list;

  //método para atualizar a lista de contatos
  @action
  refreshList([dynamic value]) {
    list = _service.find();
  }

  _ContactListBack() {
    refreshList();
  }

  //método para chamar o form salvar/alterar
  goToForm(BuildContext context, [Contact? contact]) {
    Navigator.of(context)
        .pushNamed(ContactHome.CONTACT_FORM, arguments: contact)
        .then(refreshList);
  }

  //excluir
  remove(int id) {
    _service.remove(id);
    refreshList();
  }
}
