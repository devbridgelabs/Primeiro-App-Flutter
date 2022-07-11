import 'package:flutter/material.dart';
import 'package:teste/lista_de_contatos/injection.dart';
import 'package:teste/lista_de_contatos/views/contact_form.dart';
import 'package:teste/lista_de_contatos/views/contact_list.dart';
import 'package:get_it/get_it.dart';

class ContactHome extends StatelessWidget {
  static const CONTACT_LIST = '/contact-list';
  static const CONTACT_FORM = '/contact-form';

  const ContactHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    setupInjection();
    return MaterialApp(
      title: 'Home',
      routes: {
        CONTACT_LIST: (context) => ContactList(),
        CONTACT_FORM: (context) => ContactForm(),
      },
    );
  }
}
