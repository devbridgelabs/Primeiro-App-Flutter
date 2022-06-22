import 'package:flutter/material.dart';
import 'package:teste/crud/models/user.dart';

class UserTile extends StatelessWidget {
  final User user;

  const UserTile(this.user);

  // const UserTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final avatar = user.avatarUrl == null || user.avatarUrl.isEmpty
        ? CircleAvatar(
            child: Icon(Icons.person),
          )
        : CircleAvatar(
            backgroundImage: NetworkImage(user.avatarUrl),
          );

    return ListTile(
      leading: avatar,
      title: Text(user.name),
      subtitle: Text(user.email),
      trailing: Container(
        width: 100,
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.edit),
              color: Color.fromARGB(255, 234, 160, 0),
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
  }
}
