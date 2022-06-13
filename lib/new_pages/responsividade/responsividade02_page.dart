import 'package:flutter/material.dart';

class Responsividade02Page extends StatelessWidget {
  const Responsividade02Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(title: Text('AppBar'));
    var size = MediaQuery.of(context).size;
    var screenHeight = (size.height - appBar.preferredSize.height) -
        MediaQuery.of(context).padding.top;
    return Scaffold(
      appBar: appBar,
      body: Container(
        width: size.width,
        height: screenHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: size.width,
              // height: screenHeight * 0.5, --OU--
              height: screenHeight / 2,
              color: Colors.black,
            ),
            Container(
              width: size.width,
              height: screenHeight * 0.5,
              color: Color.fromARGB(255, 0, 8, 71),
            ),
          ],
        ),
      ),
    );
  }
}
