import 'package:dartz/dartz.dart';
import 'package:movie_app/movies/data/models/movie_model.dart';

import '../../../core/failure/failure.dart';
import '../entites/movie_entity.dart';

abstract class BaseMovieRepository {
  Future<Either<Failure, List<MovieEntity>>> getNowPlayingMovie();
  Future<Either<Failure, List<MovieEntity>>> getPopularMovie();
  Future<Either<Failure, List<MovieEntity>>> getTopRatedMovie();
}
