import 'package:json_annotation/json_annotation.dart';

part 'igdb_genre.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class IgdbGenre {
  final int id;
  final String name;

  const IgdbGenre({
    required this.id,
    required this.name,
  });

  factory IgdbGenre.fromJson(Map<String, dynamic> json) =>
      _$IgdbGenreFromJson(json);

  Map<String, dynamic> toJson() => _$IgdbGenreToJson(this);
}
