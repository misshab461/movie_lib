import 'package:dartz/dartz.dart';
import 'package:movie_lib/domain/cast_crew/cast_crew/cast_crew.dart';
import 'package:movie_lib/domain/core/failures/failures.dart';

abstract class ICastCrewFazard {
  Future<Either<MainFailures, CastCrew>> getCastCrewData({
    required int movieId,
    required String type,
  });
}
