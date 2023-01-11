import 'package:flutter/material.dart';

import '../../../domain/model/game.dart';

class GameCard extends StatelessWidget {
  final Game game;

  const GameCard({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(game.name),
      ),
    );
  }
}
