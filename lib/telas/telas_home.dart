// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:teste/telas/list_and_detail_page/main.dart';
import 'package:teste/telas/material/app_bar_demo.dart';
import 'package:teste/telas/material/banner_demo.dart';
import 'package:teste/telas/material/bottom_app_bar_demo.dart';
import 'package:teste/telas/material/bottom_navigation_demo.dart';
import 'package:teste/telas/material/data_table_demo.dart';
import 'package:teste/telas/material/tabs_scrollable_demo.dart';
import 'package:teste/telas/material/material_demo_types.dart';
import 'package:teste/telas/screens/login_screen_1.dart';
import 'package:teste/telas/screens/login_screen_2.dart';
import 'package:teste/telas/screens/login_screen_4.dart';
import 'package:teste/telas/screens/login_screen_6.dart';
import 'package:teste/telas/table_page.dart';

class TelasHome extends StatelessWidget {
  const TelasHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Telas'),
      ),
      body: Container(
        margin: EdgeInsets.all(0),
        width: double.infinity,
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 0,
                bottom: 0,
                right: 0,
                top: 20,
              ),
              child: Center(
                child: ButtonTheme(
                  textTheme: ButtonTextTheme.primary,
                  buttonColor: Color.fromARGB(255, 1, 7, 66),
                  minWidth: 240,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => AppBarDemo(),
                        ),
                      );
                    },
                    child: Text('App Bar'),
                  ),
                ),
              ),
            ),
            Center(
              child: ButtonTheme(
                textTheme: ButtonTextTheme.primary,
                buttonColor: Color.fromARGB(255, 1, 7, 66),
                minWidth: 240,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => BannerDemo(),
                      ),
                    );
                  },
                  child: Text('Banner'),
                ),
              ),
            ),
            Center(
              child: ButtonTheme(
                textTheme: ButtonTextTheme.primary,
                buttonColor: Color.fromARGB(255, 1, 7, 66),
                minWidth: 240,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => BottomAppBarDemo(),
                      ),
                    );
                  },
                  child: Text('App Bar inferior'),
                ),
              ),
            ),
            Center(
              child: ButtonTheme(
                textTheme: ButtonTextTheme.primary,
                buttonColor: Color.fromARGB(255, 1, 7, 66),
                minWidth: 240,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => BottomNavigationDemo(
                          type: BottomNavigationDemoType.withLabels,
                          restorationId: 'bottom_navigation_labels_demo',
                        ),
                      ),
                    );
                  },
                  child: Text('App Bar inferior 2'),
                ),
              ),
            ),
            Center(
              child: ButtonTheme(
                textTheme: ButtonTextTheme.primary,
                buttonColor: Color.fromARGB(255, 1, 7, 66),
                minWidth: 240,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => LoginScreen1(),
                      ),
                    );
                  },
                  child: Text('Login page'),
                ),
              ),
            ),
            Center(
              child: ButtonTheme(
                textTheme: ButtonTextTheme.primary,
                buttonColor: Color.fromARGB(255, 1, 7, 66),
                minWidth: 240,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => LoginScreen2(),
                      ),
                    );
                  },
                  child: Text('Login page 2'),
                ),
              ),
            ),
            Center(
              child: ButtonTheme(
                textTheme: ButtonTextTheme.primary,
                buttonColor: Color.fromARGB(255, 1, 7, 66),
                minWidth: 240,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => LoginScreen4(),
                      ),
                    );
                  },
                  child: Text('Login page 3'),
                ),
              ),
            ),
            Center(
              child: ButtonTheme(
                textTheme: ButtonTextTheme.primary,
                buttonColor: Color.fromARGB(255, 1, 7, 66),
                minWidth: 240,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => TablePage(),
                      ),
                    );
                  },
                  child: Text('Tabela'),
                ),
              ),
            ),
            Center(
              child: ButtonTheme(
                textTheme: ButtonTextTheme.primary,
                buttonColor: Color.fromARGB(255, 1, 7, 66),
                minWidth: 240,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => MyAppList(),
                      ),
                    );
                  },
                  child: Text('List'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
