import 'package:json_annotation/json_annotation.dart';

part 'igdb_mode.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class IgdbMode {
  final int id;
  final String name;

  const IgdbMode({
    required this.id,
    required this.name,
  });

  factory IgdbMode.fromJson(Map<String, dynamic> json) =>
      _$IgdbModeFromJson(json);

  Map<String, dynamic> toJson() => _$IgdbModeToJson(this);
}
