import 'package:get_it/get_it.dart';
import 'package:teste/lista_de_contatos/database/sqlite/dao/contact_dao_impl.dart';
import 'package:teste/lista_de_contatos/domain/interfaces/contact_dao.dart';

setupInjection() {
  GetIt getIt = GetIt.I;

  getIt.registerSingleton<ContactDAO>(ContactDAOImpl());
}
