import 'package:dartz/dartz.dart';
import 'package:movie_lib/domain/core/failures/failures.dart';
import 'package:movie_lib/domain/search/search/search.dart';

abstract class ISearchFazard {
  Future<Either<MainFailures, Search>> getSearchItems({required String title});
}
