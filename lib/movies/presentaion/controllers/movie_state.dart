part of 'movie_bloc.dart';

class MovieState extends Equatable {
  final List<MovieEntity> NowPlayingMovie;
  final RequestState NowPlayingState;
  final String NowPlayingMessage;
  final List<MovieEntity> PopularMovie;
  final RequestState PopularMovieState;
  final String PopularMessage;
  final List<MovieEntity> TopRatedMovie;
  final RequestState TopRatedMovieState;
  final String TopRatedMessage;

  MovieState(
      {this.NowPlayingMovie = const [],
      this.NowPlayingState = RequestState.loading,
      this.NowPlayingMessage = '',
      this.PopularMovie = const [],
      this.PopularMovieState = RequestState.loading,
      this.PopularMessage = '',
      this.TopRatedMovie = const [],
      this.TopRatedMovieState = RequestState.loading,
      this.TopRatedMessage = ''});

  MovieState copyWith({
    List<MovieEntity>? nowPlayingMovie,
    RequestState? nowPlayingState,
    String? NowPlayingMessage,
    List<MovieEntity>? PopularMovie,
    RequestState? PopularMovieState,
    String? PopularMessage,
    List<MovieEntity>? TopRatedMovie,
    RequestState? TopRatedMovieState,
    String? TopRatedMessage,
  }) {
    return MovieState(
        NowPlayingMovie: nowPlayingMovie ?? this.NowPlayingMovie,
        NowPlayingState: nowPlayingState ?? this.NowPlayingState,
        NowPlayingMessage: NowPlayingMessage ?? this.NowPlayingMessage,
        PopularMovie: PopularMovie ?? this.PopularMovie,
        PopularMovieState: PopularMovieState ?? this.PopularMovieState,
        PopularMessage: PopularMessage ?? this.PopularMessage,
        TopRatedMovie: TopRatedMovie ?? this.TopRatedMovie,
        TopRatedMovieState: TopRatedMovieState ?? this.TopRatedMovieState,
        TopRatedMessage: TopRatedMessage ?? this.TopRatedMessage);
  }

  @override
  List<Object> get props => [
        NowPlayingMovie,
        NowPlayingState,
        NowPlayingMessage,
        PopularMovie,
        PopularMovieState,
        PopularMessage,
        TopRatedMovie,
        TopRatedMovieState,
        TopRatedMessage
      ];
}
