// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

// BEGIN bannerDemo

enum BannerDemoAction {
  reset,
  showMultipleActions,
  showLeading,
}

class BannerDemo extends StatefulWidget {
  const BannerDemo({super.key});

  @override
  State<BannerDemo> createState() => _BannerDemoState();
}

class _BannerDemoState extends State<BannerDemo> with RestorationMixin {
  static const _itemCount = 20;

  @override
  String get restorationId => 'banner_demo';

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_displayBanner, 'display_banner');
    registerForRestoration(_showMultipleActions, 'show_multiple_actions');
    registerForRestoration(_showLeading, 'show_leading');
  }

  final RestorableBool _displayBanner = RestorableBool(true);
  final RestorableBool _showMultipleActions = RestorableBool(true);
  final RestorableBool _showLeading = RestorableBool(true);

  @override
  void dispose() {
    _displayBanner.dispose();
    _showMultipleActions.dispose();
    _showLeading.dispose();
    super.dispose();
  }

  void handleDemoAction(BannerDemoAction action) {
    setState(() {
      switch (action) {
        case BannerDemoAction.reset:
          _displayBanner.value = true;
          _showMultipleActions.value = true;
          _showLeading.value = true;
          break;
        case BannerDemoAction.showMultipleActions:
          _showMultipleActions.value = !_showMultipleActions.value;
          break;
        case BannerDemoAction.showLeading:
          _showLeading.value = !_showLeading.value;
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final banner = MaterialBanner(
      content: Text('Teste'),
      leading: _showLeading.value
          ? CircleAvatar(
              backgroundColor: colorScheme.primary,
              child: Icon(Icons.access_alarm, color: colorScheme.onPrimary),
            )
          : null,
      actions: [
        TextButton(
          onPressed: () {
            setState(() {
              _displayBanner.value = false;
            });
          },
          child: Text('FAZER LOGIN'),
        ),
        if (_showMultipleActions.value)
          TextButton(
            onPressed: () {
              setState(() {
                _displayBanner.value = false;
              });
            },
            child: Text('DISPENSAR'),
          ),
      ],
      backgroundColor: colorScheme.background,
    );

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Banner'),
        actions: [
          PopupMenuButton<BannerDemoAction>(
            onSelected: handleDemoAction,
            itemBuilder: (context) => <PopupMenuEntry<BannerDemoAction>>[
              PopupMenuItem<BannerDemoAction>(
                value: BannerDemoAction.reset,
                child: Text('Redefinir banner'),
              ),
              const PopupMenuDivider(),
              CheckedPopupMenuItem<BannerDemoAction>(
                value: BannerDemoAction.showMultipleActions,
                checked: _showMultipleActions.value,
                child: Text('V??rias op????es'),
              ),
              CheckedPopupMenuItem<BannerDemoAction>(
                value: BannerDemoAction.showLeading,
                checked: _showLeading.value,
                child: Text('??cone principal'),
              ),
            ],
          ),
        ],
      ),
      body: ListView.builder(
        restorationId: 'banner_demo_list_view',
        itemCount: _displayBanner.value ? _itemCount + 1 : _itemCount,
        itemBuilder: (context, index) {
          if (index == 0 && _displayBanner.value) {
            return banner;
          }
          return ListTile(
            title: Text('Teste $index'),
          );
        },
      ),
    );
  }
}

// END
