// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trending.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Trending _$TrendingFromJson(Map<String, dynamic> json) => Trending(
      page: (json['page'] as num?)?.toInt(),
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => TrendingModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TrendingToJson(Trending instance) => <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
    };

TrendingModel _$TrendingModelFromJson(Map<String, dynamic> json) =>
    TrendingModel(
      backdropPath: json['backdrop_path'] as String?,
      id: (json['id'] as num?)?.toInt(),
      originalTitle: json['original_title'] as String?,
      overview: json['overview'] as String?,
      posterPath: json['poster_path'] as String?,
      mediaType: json['media_type'] as String?,
      title: json['title'] as String?,
      originalLanguage: json['original_language'] as String?,
      genreIds: (json['genre_ids'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      popularity: (json['popularity'] as num?)?.toDouble(),
      releaseDate: json['release_date'] as String?,
      video: json['video'] as bool?,
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
      voteCount: (json['vote_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$TrendingModelToJson(TrendingModel instance) =>
    <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'id': instance.id,
      'original_title': instance.originalTitle,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'media_type': instance.mediaType,
      'title': instance.title,
      'original_language': instance.originalLanguage,
      'genre_ids': instance.genreIds,
      'popularity': instance.popularity,
      'release_date': instance.releaseDate,
      'video': instance.video,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
    };
