import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {
  const MediaQueryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      title: Text('${MediaQuery.of(context).size.width}'),
    );
    return Scaffold(
      appBar: appBar,
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: (MediaQuery.of(context).size.height -
                // kToolbarHeight -   -- OU --
                appBar.preferredSize.height -
                MediaQuery.of(context).padding.top),
            color: Color.fromARGB(255, 7, 39, 38),
          ),
        ],
      ),
    );
  }
}
