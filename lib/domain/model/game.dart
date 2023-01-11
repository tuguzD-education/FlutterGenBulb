import 'package:dartz/dartz.dart' as dartz;

import 'mode.dart';
import 'genre.dart';
import 'util/id.dart';
import 'util/node.dart';

class Game implements Node {
  @override
  final Id<Game> id;
  final String name;
  final String? summary;
  final dartz.IList<Mode> gameModes;
  final dartz.IList<Genre> genres;

  const Game({
    required this.id,
    required this.name,
    required this.summary,
    required this.gameModes,
    required this.genres,
  });
}
