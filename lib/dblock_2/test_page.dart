import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  String text = "Initial Text";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              Container(child: DrawerHeader(child: Container())),
              Container(
                child: Column(children: <Widget>[
                  ListTile(
                      leading: Icon(Icons.info),
                      onTap: () {
                        setState(() {
                          text = "info pressed";
                        });
                      }),
                  ListTile(
                      leading: Icon(Icons.save),
                      onTap: () {
                        setState(() {
                          text = "save pressed";
                        });
                      }),
                  ListTile(
                      leading: Icon(Icons.settings),
                      onTap: () {
                        setState(() {
                          text = "settings pressed";
                        });
                      }),
                ]),
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text("Test Page"),
        ),
        body: Center(
          child: Text((text)),
        ));
  }
}
