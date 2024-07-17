import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_lib/domain/core/api_end_points.dart';
import 'package:movie_lib/domain/core/failures/failures.dart';
import 'package:movie_lib/domain/genres/genres/genres.dart';
import 'package:movie_lib/domain/genres/i_genres_fazard.dart';

@LazySingleton(as: IGenresFazard)
class GenresMoviesRepository implements IGenresFazard {
  @override
  Future<Either<MainFailures, Genres>> getGenresList(
      {required int genreId}) async {
    Response responce = await Dio(BaseOptions())
        .get(ApiEndpoinds.genrepoint + genreId.toString());

    try {
      if (responce.statusCode == 200 || responce.statusCode == 201) {
        final result = Genres.fromJson(responce.data);
        log(result.results.toString());
        return Right(result);
      } else {
        return const Left(MainFailures.serverFailure());
      }
    } catch (e) {
      print(e.toString());
      return const Left(MainFailures.clientFailure());
    }
  }
}
