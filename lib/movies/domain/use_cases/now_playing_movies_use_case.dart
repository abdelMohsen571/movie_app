import 'package:dartz/dartz.dart';
import 'package:movie_app/core/base_use_cases/base_use_case.dart';
import 'package:movie_app/movies/domain/entites/movie_entity.dart';
import 'package:movie_app/movies/domain/repository/base_movie_repository.dart';

import '../../../core/failure/failure.dart';
import '../../data/models/movie_model.dart';

class NowPlayingUseCase extends BaseUseCase<List<MovieEntity>> {
  final BaseMovieRepository baseMovieRepository;

  NowPlayingUseCase(this.baseMovieRepository);

  @override
  Future<Either<Failure, List<MovieEntity>>> call() async {
    return await baseMovieRepository.getNowPlayingMovie();
  }
}
