class appConstance {
  static const String apiKey = 'b0040363e13ad4ef9e9ed5e525a1b862';
  static const String baseUrl = 'https://api.themoviedb.org/3';
  static const String movieNowPlayingUrl = '/movie/now_playing';
  static const String popularMovieUrl = '/movies/get-popular-movies';
  static const String topRatedMovieUrl = '/movie/top_rated';

  static const String nowPlayingMoviePath =
      'https://api.themoviedb.org/3/movie/now_playing?api_key=b0040363e13ad4ef9e9ed5e525a1b862';

  static const String popularMoviePath =
      'https://api.themoviedb.org/3/movie/popular?api_key=b0040363e13ad4ef9e9ed5e525a1b862';

  static const String topRatedMoviePath =
      '$baseUrl$topRatedMovieUrl?api_key=$apiKey';

  static const String baseImagepath = 'https://image.tmdb.org/t/p/w500';
  static String imagepath(String path) =>
      'https://image.tmdb.org/t/p/w500$path';
}
