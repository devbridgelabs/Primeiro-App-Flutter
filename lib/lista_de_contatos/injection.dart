import 'package:get_it/get_it.dart';
import 'package:teste/lista_de_contatos/domain/interfaces/contact_dao.dart';
import 'package:teste/lista_de_contatos/domain/services/contact_service.dart';

import 'database/sqlite/dao/contact_dao_impl.dart';

setupInjection() {
  GetIt getIt = GetIt.I;

  getIt.registerSingleton<ContactDAO>(ContactDAOImpl());
  getIt.registerSingleton<ContactService>(ContactService());
}
