import 'package:json_annotation/json_annotation.dart';
part 'genres.g.dart';

@JsonSerializable()
class Genres {
  int? page;
  List<GenresResult>? results;

  Genres({this.page, this.results});

  factory Genres.fromJson(Map<String, dynamic> json) {
    return _$GenresFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GenresToJson(this);
}

@JsonSerializable()
class GenresResult {
  @JsonKey(name: 'adult')
  bool? adult;
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;
  @JsonKey(name: 'genre_ids')
  List<int>? genreIds;
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'original_language')
  String? originalLanguage;
  @JsonKey(name: 'original_title')
  String? originalTitle;
  @JsonKey(name: 'overview')
  String? overview;
  @JsonKey(name: 'popularity')
  double? popularity;
  @JsonKey(name: 'poster_path')
  String? posterPath;
  @JsonKey(name: 'release_date')
  String? releaseDate;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'video')
  bool? video;
  @JsonKey(name: 'vote_average')
  double? voteAverage;
  @JsonKey(name: 'vote_count')
  int? voteCount;

  GenresResult({
    this.adult,
    this.backdropPath,
    this.genreIds,
    this.id,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.releaseDate,
    this.title,
    this.video,
    this.voteAverage,
    this.voteCount,
  });

  factory GenresResult.fromJson(Map<String, dynamic> json) {
    return _$GenresResultFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GenresResultToJson(this);
}
