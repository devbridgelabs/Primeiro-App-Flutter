import 'package:flutter/material.dart';
import 'package:teste/crud/models/user.dart';
import 'package:teste/crud/data/dummy_users.dart';

class Users with ChangeNotifier {
  final Map<String, User> _items = {...DUMMY_USERS};

  List<User> get all {
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }
}
