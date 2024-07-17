import 'package:dartz/dartz.dart';
import 'package:movie_lib/domain/core/failures/failures.dart';
import 'package:movie_lib/domain/genres/genres/genres.dart';

abstract class IGenresFazard {
  Future<Either<MainFailures, Genres>> getGenresList({required int genreId});
}
