import 'package:dartz/dartz.dart' as dartz;

import '../../domain/model/game.dart';

class GameState {
  final dartz.IList<Game> games;
  final bool refreshing;

  const GameState({
    this.games = const dartz.Nil(),
    this.refreshing = false,
  });

  GameState copy({
    dartz.IList<Game>? games,
    bool? refreshing,
  }) =>
      GameState(
        games: games ?? this.games,
        refreshing: refreshing ?? this.refreshing,
      );
}
