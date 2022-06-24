// ignore_for_file: unnecessary_new, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teste/crud/provider/users.dart';
import 'package:teste/crud/routes/app_routes.dart';
import 'package:teste/crud/views/user_form.dart';
import 'package:teste/crud/views/user_list.dart';

class CrudPage extends StatelessWidget {
  const CrudPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => new Users(),
        ),
      ],
      child: MaterialApp(
        title: 'Crud',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        debugShowCheckedModeBanner: false,
        routes: {
          AppRoutes.HOME: (_) => UserList(),
          AppRoutes.USER_FORM: (_) => UserForm(),
        },
      ),
    );
  }
}
