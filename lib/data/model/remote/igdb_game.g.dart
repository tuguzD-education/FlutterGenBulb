// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'igdb_game.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IgdbGame _$IgdbGameFromJson(Map<String, dynamic> json) => IgdbGame(
      id: json['id'] as int,
      name: json['name'] as String,
      summary: json['summary'] as String?,
      gameModes: (json['game_modes'] as List<dynamic>)
          .map((e) => IgdbMode.fromJson(e as Map<String, dynamic>))
          .toList(),
      genres: (json['genres'] as List<dynamic>)
          .map((e) => IgdbGenre.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$IgdbGameToJson(IgdbGame instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'summary': instance.summary,
      'game_modes': instance.gameModes,
      'genres': instance.genres,
    };
