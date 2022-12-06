import 'package:get_it/get_it.dart';
import 'package:movie_app/movies/data/data_source/movie_remote_data_source.dart';
import 'package:movie_app/movies/data/repository/movie_repository.dart';
import 'package:movie_app/movies/domain/repository/base_movie_repository.dart';
import 'package:movie_app/movies/domain/use_cases/now_playing_movies_use_case.dart';
import 'package:movie_app/movies/domain/use_cases/popular_movie_use_case.dart';
import 'package:movie_app/movies/domain/use_cases/top_rated_movies_use_case.dart';
import 'package:movie_app/movies/presentaion/controllers/movie_bloc.dart';

final sl = GetIt.instance;

class ServicesLocator {
  void init() {
    sl.registerFactory(() => MovieBloc(sl(), sl(), sl()));
    //use cases

    sl.registerLazySingleton(() => NowPlayingUseCase(sl()));
    sl.registerLazySingleton(() => PopularMovieUseCase(sl()));
    sl.registerLazySingleton(() => TopRatedMoviesUseCase(sl()));
    //Repository
    sl.registerLazySingleton<BaseMovieRepository>(() => MovieRepository(sl()));

    /// Data Source ;
    sl.registerLazySingleton<BaseMovieRemoteDataSource>(
        () => MovieRemoteDataSource());
  }
}
