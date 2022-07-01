import 'dart:math';

import 'package:flutter/material.dart';

class Music extends StatefulWidget {
  @override
  _MusicState createState() => _MusicState();
}

class _MusicState extends State<Music> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color.fromARGB(255, 24, 0, 95),
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Hello World',
          style: TextStyle(color: Color.fromARGB(255, 24, 0, 95)),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.menu, color: Color.fromARGB(255, 24, 0, 95)),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: 250,
              height: 270,
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 24, 0, 95).withOpacity(.5),
                  ),
                  padding: EdgeInsets.all(12),
                  child: Container(
                    width: 200,
                    height: 200,
                    padding: const EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: Color.fromARGB(255, 24, 0, 95), width: 5)),
                    child: ClipOval(
                        clipper: MClipper(),
                        child: Image.asset(
                          'assets/images/person.png',
                          fit: BoxFit.cover,
                        )),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Column(
              children: <Widget>[
                Text('Houssaine El Ghazely',
                    style: TextStyle(
                        color: Color.fromARGB(255, 24, 0, 95),
                        fontSize: 24,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 10,
                ),
                Text('Hello World',
                    style: TextStyle(
                      color: Color.fromARGB(255, 24, 0, 95),
                      fontSize: 14,
                    ))
              ],
            ),
            Container(
              width: 350.0,
              height: 150.0,
              child: Stack(
                children: <Widget>[
                  Center(
                    child: Container(
                      width: 290,
                      height: 59,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(
                              color: Color.fromARGB(255, 24, 0, 95),
                              width: 3.0)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.fast_rewind,
                                size: 55.0,
                                color: Color.fromARGB(255, 24, 0, 95)),
                            Expanded(
                              child: Container(),
                            ),
                            Icon(Icons.fast_forward,
                                size: 55.0,
                                color: Color.fromARGB(255, 24, 0, 95)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 92,
                      height: 92,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 24, 0, 95),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.play_arrow,
                            color: Colors.white, size: 59),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 190,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: -25,
                    child: Container(
                      width: 50,
                      height: 190,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 24, 0, 95),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30),
                              bottomRight: Radius.circular(30))),
                    ),
                  ),
                  Positioned(
                    right: -25,
                    child: Container(
                      width: 50,
                      height: 190,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 24, 0, 95),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              bottomLeft: Radius.circular(30))),
                    ),
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text('Houssaine BackEnd',
                            style: TextStyle(
                                color: Color.fromARGB(255, 24, 0, 95),
                                fontSize: 14,
                                fontWeight: FontWeight.bold)),
                        Text('Houssaine API',
                            style: TextStyle(
                                color: Color.fromARGB(255, 24, 0, 95),
                                fontSize: 14,
                                fontWeight: FontWeight.bold)),
                        Text('Houssaine FrontEnd',
                            style: TextStyle(
                                color: Color.fromARGB(255, 24, 0, 95),
                                fontSize: 14,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return Rect.fromCircle(
        center: Offset(size.width / 2, size.height / 2),
        radius: min(size.width, size.height) / 2);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
