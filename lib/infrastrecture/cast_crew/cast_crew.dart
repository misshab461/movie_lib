import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_lib/core/strings.dart';
import 'package:movie_lib/domain/cast_crew/cast_crew/cast_crew.dart';
import 'package:movie_lib/domain/cast_crew/i_cast_crew_fazard.dart';
import 'package:movie_lib/domain/core/failures/failures.dart';
import 'package:movie_lib/infrastrecture/api_key.dart';

@LazySingleton(as: ICastCrewFazard)
class CastCrewResopitory implements ICastCrewFazard {
  @override
  Future<Either<MainFailures, CastCrew>> getCastCrewData({
    required int movieId,
    required String type,
  }) async {
    final cast = '$baseUrl/$type/$movieId/credits?api_key=$apiKey';
    Response responce = await Dio(BaseOptions()).get(cast);

    try {
      if (responce.statusCode == 200 || responce.statusCode == 201) {
        final result = CastCrew.fromJson(responce.data);
        log(result.cast.toString());
        return Right(result);
      } else {
        return const Left(MainFailures.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailures.clientFailure());
    }
  }
}
