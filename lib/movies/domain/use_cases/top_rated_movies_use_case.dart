import 'package:dartz/dartz.dart';
import 'package:movie_app/core/base_use_cases/base_use_case.dart';
import 'package:movie_app/movies/domain/repository/base_movie_repository.dart';

import '../../../core/failure/failure.dart';
import '../entites/movie_entity.dart';

class TopRatedMoviesUseCase extends BaseUseCase {
  final BaseMovieRepository baseMovieRepository;

  TopRatedMoviesUseCase(this.baseMovieRepository);
  @override
  Future<Either<Failure, List<MovieEntity>>> call() async {
    return await baseMovieRepository.getTopRatedMovie();
  }
}
