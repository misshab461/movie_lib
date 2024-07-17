import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_lib/domain/core/api_end_points.dart';
import 'package:movie_lib/domain/core/failures/failures.dart';
import 'package:movie_lib/domain/search/i_search_fazard.dart';
import 'package:movie_lib/domain/search/search/search.dart';

@LazySingleton(as: ISearchFazard)
class ISearchRepository implements ISearchFazard {
  @override
  Future<Either<MainFailures, Search>> getSearchItems({
    required String title,
  }) async {
    Response response =
        await Dio(BaseOptions()).get(ApiEndpoinds.searchPoint + title);
    try {
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = Search.fromJson(response.data);
        return Right(result);
      } else {
        return const Left(MainFailures.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailures.clientFailure());
    }
  }
}
