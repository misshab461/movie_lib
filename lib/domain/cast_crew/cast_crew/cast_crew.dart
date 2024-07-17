import 'package:json_annotation/json_annotation.dart';

part 'cast_crew.g.dart';

@JsonSerializable()
class CastCrew {
  int? id;
  List<CastCrewResult>? cast;

  CastCrew({this.id, this.cast});

  factory CastCrew.fromJson(Map<String, dynamic> json) {
    return _$CastCrewFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CastCrewToJson(this);
}

@JsonSerializable()
class CastCrewResult {
  @JsonKey(name: 'profile_path')
  String? profilePath;

  CastCrewResult({
    this.profilePath,
  });

  factory CastCrewResult.fromJson(Map<String, dynamic> json) =>
      _$CastCrewResultFromJson(json);

  Map<String, dynamic> toJson() => _$CastCrewResultToJson(this);
}
