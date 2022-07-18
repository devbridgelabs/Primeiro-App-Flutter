// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:teste/dblock_2/dblock_2_home.dart';
import 'package:teste/home_botoes.dart';

class LoginPageDblock2 extends StatelessWidget {
  const LoginPageDblock2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: IconButton(
        padding: EdgeInsets.all(0),
        color: Color.fromARGB(255, 255, 255, 255),
        icon: Icon(Icons.arrow_back, size: 22.0),
        onPressed: () {
          Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (_) => HomeBotoes(),
            ),
            (Route<dynamic> route) => false,
          );
        },
      )),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'DBLOCK 2.0',
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 50.0,
                      color: Colors.blue),
                ),
                SizedBox(
                  height: 25,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Login',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Senha',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        print('Forgotted Password!');
                      },
                      child: Text(
                        'Esqueceu a senha?',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.4),
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.of(context).push<int>(
                        MaterialPageRoute(
                          builder: (_) => Dblock2Home(),
                        ),
                      );
                      print("Successul Login.");
                    },
                    color: Colors.blue,
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Divider(
                  color: Colors.black,
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '''Não tem uma conta? ''',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontSize: 16.0,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        print('Sign Up');
                      },
                      child: Text('Registrar agora'),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
