import 'package:flutter/material.dart';

class Responsividade03Page extends StatelessWidget {
  const Responsividade03Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(title: Text('AppBar'));
    var size = MediaQuery.of(context).size;
    // var screenHeight = (size.height - appBar.preferredSize.height) -
    //     MediaQuery.of(context).padding.top;
    return Scaffold(
      appBar: appBar,
      body: Container(
        width: size.width,
        height: size.height,
        child: Column(
          children: [
            Container(
              width: 200,
              height: 200,
              color: Color.fromARGB(255, 120, 120, 120),
            ),
            Expanded(
              child: Container(
                child: LayoutBuilder(
                  builder: (_, constraints) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: constraints.maxWidth,
                          height: constraints.maxHeight / 2,
                          color: Color.fromARGB(255, 27, 54, 61),
                        ),
                        Container(
                          width: constraints.maxWidth,
                          height: constraints.maxHeight * 0.5,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
