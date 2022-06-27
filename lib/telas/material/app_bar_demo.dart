// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

// BEGIN appbarDemo

class AppBarDemo extends StatelessWidget {
  const AppBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        title: Text(
          'Teste',
        ),
        actions: [
          IconButton(
            tooltip: 'Teste',
            icon: const Icon(
              Icons.favorite,
            ),
            onPressed: () {},
          ),
          IconButton(
            tooltip: 'Tette',
            icon: const Icon(
              Icons.search,
            ),
            onPressed: () {},
          ),
          PopupMenuButton<Text>(
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Text(
                    'Teste',
                  ),
                ),
                PopupMenuItem(
                  child: Text(
                    'Teste',
                  ),
                ),
                PopupMenuItem(
                  child: Text(
                    'Teste',
                  ),
                ),
              ];
            },
          )
        ],
      ),
      body: Center(
        child: Text(
          'Teste',
        ),
      ),
    );
  }
}

// END
