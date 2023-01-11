import 'package:json_annotation/json_annotation.dart';

import 'igdb_genre.dart';
import 'igdb_mode.dart';

part 'igdb_game.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class IgdbGame {
  final int id;
  final String name;
  final String? summary;
  final List<IgdbMode> gameModes;
  final List<IgdbGenre> genres;

  const IgdbGame({
    required this.id,
    required this.name,
    this.summary,
    required this.gameModes,
    required this.genres,
  });

  factory IgdbGame.fromJson(Map<String, dynamic> json) =>
      _$IgdbGameFromJson(json);

  Map<String, dynamic> toJson() => _$IgdbGameToJson(this);
}
