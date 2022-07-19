// ignore_for_file: deprecated_member_use, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:teste/crud3/car_crud_home.dart';
import 'package:teste/dblock_2/distancia_entre_pontos.dart';
import 'package:teste/dblock_2/google_maps_rastreamento/order_tracking_page.dart';
import 'package:teste/dblock_2/login_page_dblock2.dart';
import 'package:teste/dblock_2/marcadores.dart';
import 'package:teste/dblock_2/perfil/configuracoes.dart';
import 'package:teste/dblock_2/perfil/conta.dart';
import 'package:teste/dblock_2/rest_api/screens/home_rest_api.dart';
import 'package:teste/dblock_2/rotas.dart';
import 'package:teste/dblock_2/rotas2.dart';
import 'package:teste/dblock_2/tabela/tabela.dart';
import 'package:teste/dblock_2/test_page.dart';
import 'package:teste/email_e_sms/email_e_sms.dart';

class Dblock2Home extends StatefulWidget {
  const Dblock2Home({Key? key}) : super(key: key);

  @override
  State<Dblock2Home> createState() => _Dblock2HomeState();
}

class _Dblock2HomeState extends State<Dblock2Home> {
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var screenHeight = (size.height) - MediaQuery.of(context).padding.top;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          MediaQuery.of(context).size.height * 0.073,
        ),
        child: AppBar(
          title: Text(
            'DBlock 2',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            PopupMenuButton<Text>(
              icon: Icon(Icons.person),
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        primary: Color.fromARGB(255, 0, 0, 0),
                        textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).push<int>(
                          MaterialPageRoute(
                            builder: (_) => Conta(),
                          ),
                        );
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              padding: EdgeInsets.only(
                                left: 0,
                                bottom: 0,
                                right: 10,
                                top: 0,
                              ),
                              child: Icon(Icons.account_circle_rounded)),
                          Container(child: Text('Conta')),
                        ],
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        primary: Color.fromARGB(255, 0, 0, 0),
                        textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).push<int>(
                          MaterialPageRoute(
                            builder: (_) => Configuracoes(),
                          ),
                        );
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              padding: EdgeInsets.only(
                                left: 0,
                                bottom: 0,
                                right: 10,
                                top: 0,
                              ),
                              child: Icon(Icons.settings)),
                          Container(child: Text('Configurações')),
                        ],
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        primary: Color.fromARGB(255, 0, 0, 0),
                        textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                            builder: (_) => LoginPageDblock2(),
                          ),
                          (Route<dynamic> route) => false,
                        );
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              padding: EdgeInsets.only(
                                left: 0,
                                bottom: 0,
                                right: 10,
                                top: 0,
                              ),
                              child: Icon(Icons.logout)),
                          Container(child: Text('Sair')),
                        ],
                      ),
                    ),
                  ),
                ];
              },
            )
          ],
        ),
      ),
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[
            Marcadores(),
            CarCrudHome(),
            DistanciaEntrePontos(),
            EmailESms(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
              title: Text('Localização'), icon: Icon(Icons.room_outlined)),
          BottomNavyBarItem(
              title: Text('Veículos'), icon: Icon(Icons.content_paste)),
          BottomNavyBarItem(
              title: Text('Distância entre'), icon: Icon(Icons.speed)),
          BottomNavyBarItem(title: Text('Chat'), icon: Icon(Icons.chat)),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: screenHeight / 5.7,
              child: const DrawerHeader(
                padding: EdgeInsets.only(
                  left: 7,
                  bottom: 0,
                  right: 0,
                  top: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'DBlock 2',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      left: 0,
                      bottom: 0,
                      right: 7,
                      top: 0,
                    ),
                    child: Icon(
                      Icons.directions_car,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  Text(
                    'Veículo 1 - NKJ2I41',
                    style: TextStyle(
                      fontSize: 17,
                      color: Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      left: 0,
                      bottom: 0,
                      right: 7,
                      top: 0,
                    ),
                    child: Icon(
                      Icons.directions_car,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  Text(
                    'Veículo 2 - NKJ2I41',
                    style: TextStyle(
                      fontSize: 17,
                      color: Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      left: 0,
                      bottom: 0,
                      right: 7,
                      top: 0,
                    ),
                    child: Icon(
                      Icons.directions_car,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  Text(
                    'Veículo 3 - NKJ2I41',
                    style: TextStyle(
                      fontSize: 17,
                      color: Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
