part of 'movie_bloc.dart';

abstract class MovieEvent extends Equatable {
  const MovieEvent();

  @override
  List<Object> get props => [];
}

class getNowPlayingMovieEvent extends MovieEvent {}

class getPopularMovieEvent extends MovieEvent {}

class getTopRatedEvent extends MovieEvent {}
