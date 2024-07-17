// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cast_crew.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CastCrew _$CastCrewFromJson(Map<String, dynamic> json) => CastCrew(
      id: (json['id'] as num?)?.toInt(),
      cast: (json['cast'] as List<dynamic>?)
          ?.map((e) => CastCrewResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CastCrewToJson(CastCrew instance) => <String, dynamic>{
      'id': instance.id,
      'cast': instance.cast,
    };

CastCrewResult _$CastCrewResultFromJson(Map<String, dynamic> json) =>
    CastCrewResult(
      profilePath: json['profile_path'] as String?,
    );

Map<String, dynamic> _$CastCrewResultToJson(CastCrewResult instance) =>
    <String, dynamic>{
      'profile_path': instance.profilePath,
    };
