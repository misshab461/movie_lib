import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_lib/domain/core/api_end_points.dart';
import 'package:movie_lib/domain/core/failures/failures.dart';
import 'package:movie_lib/domain/home/trending/trending.dart';
import 'package:movie_lib/domain/home/tv/tv.dart';
import 'package:movie_lib/domain/home/i_home_fazard.dart';
import 'package:dio/dio.dart';

@LazySingleton(as: IHomeFazard)
class IHomeRepository implements IHomeFazard {
  @override
  Future<Either<MainFailures, Home>> getTvList() async {
    Response responce = await Dio(BaseOptions()).get(ApiEndpoinds.tvPoint);

    try {
      if (responce.statusCode == 200 || responce.statusCode == 201) {
        final _result = Home.fromJson(responce.data);

        return Right(_result);
      } else {
        return const Left(MainFailures.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailures.clientFailure());
    }
  }

  @override
  Future<Either<MainFailures, Trending>> getTrendingList() async {
    Response responce =
        await Dio(BaseOptions()).get(ApiEndpoinds.trendingPoint);

    try {
      if (responce.statusCode == 200 || responce.statusCode == 201) {
        final _result = Trending.fromJson(responce.data);

        return Right(_result);
      } else {
        return const Left(MainFailures.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailures.clientFailure());
    }
  }
}
