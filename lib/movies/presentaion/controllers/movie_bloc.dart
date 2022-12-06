import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:movie_app/core/utils/enums.dart';
import 'package:movie_app/movies/domain/use_cases/now_playing_movies_use_case.dart';

import '../../domain/entites/movie_entity.dart';
import '../../domain/use_cases/popular_movie_use_case.dart';
import '../../domain/use_cases/top_rated_movies_use_case.dart';

part 'movie_event.dart';
part 'movie_state.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState> {
  final NowPlayingUseCase getNowPlayingUseCase;
  final PopularMovieUseCase getPopularMovieUseCase;
  final TopRatedMoviesUseCase getTopRatedMovieUseCase;

  MovieBloc(this.getNowPlayingUseCase, this.getPopularMovieUseCase,
      this.getTopRatedMovieUseCase)
      : super(MovieState()) {
    // TODO: implemeny get  popular
    on<getPopularMovieEvent>(_getPopularMovie);

    // TODO: implement event handle
    on<getNowPlayingMovieEvent>(_getNowPlayingMovie);

    on<getTopRatedEvent>(_getTopRatedMovie);
  }

  FutureOr<void> _getNowPlayingMovie(
      getNowPlayingMovieEvent event, Emitter<MovieState> emit) async {
    emit(MovieState(NowPlayingState: RequestState.loading));

    final result = await getNowPlayingUseCase();
    result.fold((l) {
      emit(state.copyWith(
          nowPlayingState: RequestState.error, NowPlayingMessage: l.message));
    }, (r) {
      emit(state.copyWith(
          nowPlayingMovie: r, nowPlayingState: RequestState.loaded));
    });
  }

  FutureOr<void> _getPopularMovie(
      getPopularMovieEvent event, Emitter<MovieState> emit) async {
    emit(MovieState(PopularMovieState: RequestState.loading));

    final result = await getPopularMovieUseCase();
    result.fold((l) {
      emit(state.copyWith(
          PopularMovieState: RequestState.error, PopularMessage: l.message));
    }, (r) {
      emit(state.copyWith(
          PopularMovie: r, PopularMovieState: RequestState.loaded));
    });
  }

  FutureOr<void> _getTopRatedMovie(
      getTopRatedEvent event, Emitter<MovieState> emit) async {
    final result = await getTopRatedMovieUseCase();
    result.fold((l) {
      emit(state.copyWith(
          TopRatedMovieState: RequestState.error, TopRatedMessage: l.message));
    }, (r) {
      emit(state.copyWith(
          TopRatedMovie: r, TopRatedMovieState: RequestState.loaded));
    });
  }
}
