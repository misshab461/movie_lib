import 'package:dartz/dartz.dart';
import 'package:movie_lib/domain/core/failures/failures.dart';
import 'package:movie_lib/domain/home/trending/trending.dart';
import 'package:movie_lib/domain/home/tv/tv.dart';

abstract class IHomeFazard {
  Future<Either<MainFailures, Home>> getTvList();
  Future<Either<MainFailures, Trending>> getTrendingList();
}
