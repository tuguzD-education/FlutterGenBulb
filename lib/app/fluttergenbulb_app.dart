import 'package:flutter/material.dart';
import 'package:fluttergenbulb/app/di.dart';

import 'game/widget/game_list_page.dart';

void main() {
  init();
  runApp(const FlutterGenBulbApp());
}

class FlutterGenBulbApp extends StatelessWidget {
  const FlutterGenBulbApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterGenBulb',
      theme: ThemeData(
          colorScheme: const ColorScheme.dark(
              primary: Colors.lightGreen
          )
      ),
      home: const GameListPage(),
    );
  }
}
