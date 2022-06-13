import 'package:flutter/material.dart';

class CarouselPage extends StatelessWidget {
  const CarouselPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carousel'),
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 100,
              itemBuilder: (context, index) {
                print(index);
                return Container(
                  margin: EdgeInsets.all(20),
                  width: 200,
                  child: Image.asset('assets/images/brb-logo.png'),
                );
              },
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 100,
              itemBuilder: (context, index) {
                print(index);
                return Container(
                  width: 200,
                  child: ListTile(
                      title: Text('Teste $index'),
                      leading: Icon(Icons.account_circle_rounded)),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
