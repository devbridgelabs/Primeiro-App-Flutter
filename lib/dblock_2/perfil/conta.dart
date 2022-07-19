// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:teste/acesso_camera/camera_home_page.dart';

class Conta extends StatelessWidget {
  const Conta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var label = TextStyle(
        fontSize: 23,
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(255, 0, 0, 0));

    var content = TextStyle(fontSize: 20, color: Color.fromARGB(255, 0, 0, 0));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Conta'),
      ),
      body: Container(
        padding: EdgeInsets.only(
          left: 17,
          bottom: 0,
          right: 0,
          top: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.all(0),
                child: Image.asset(
                  'assets/images/person.png',
                  width: 140,
                ),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(
                  bottom: 45,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                        left: 0,
                        bottom: 0,
                        right: 0,
                        top: 0,
                      ),
                      child: TextButton(
                          onPressed: () {
                            Navigator.of(context).push<int>(
                              MaterialPageRoute(
                                builder: (_) => CameraHomePage(),
                              ),
                            );
                          },
                          child: Text('Alterar foto de perfil',
                              style: TextStyle(
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 0, 18, 131)))),
                    ),
                    //Text('Alterar foto de perfil',
                    //     style: TextStyle(
                    //         fontSize: 21,
                    //         fontWeight: FontWeight.bold,
                    //         color: Color.fromARGB(255, 0, 18, 131)))),
                    Container(
                      child: IconButton(
                        onPressed: () {
                          Navigator.of(context).push<int>(
                            MaterialPageRoute(
                              builder: (_) => CameraHomePage(),
                            ),
                          );
                        },
                        icon: Icon(
                          Icons.edit,
                          color: Color.fromARGB(255, 0, 18, 131),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Text('Nome:', style: label),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 15,
              ),
              child: Text('João da Silva', style: content),
            ),
            Text('Login:', style: label),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 15,
              ),
              child: Text('teste@gmail.com', style: content),
            ),
            Text('Senha:', style: label),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 15,
              ),
              child: Text('*********', style: content),
            ),
            Text('Cidade:', style: label),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 15,
              ),
              child: Text('Anápolis', style: content),
            ),
          ],
        ),
      ),
    );
  }
}
