import 'package:dio/dio.dart';
import 'package:movie_app/core/constants/constants.dart';
import 'package:movie_app/core/error/exceptions.dart';
import 'package:movie_app/core/networks/error_message_model.dart';
import 'package:movie_app/movies/data/models/movie_model.dart';

abstract class BaseMovieRemoteDataSource {
  Future<List<MovieModel>> getNowPlayingMovie();
  Future<List<MovieModel>> getPopularMovie();
  Future<List<MovieModel>> getTopRatedMovie();
}

class MovieRemoteDataSource extends BaseMovieRemoteDataSource {
  @override
  Future<List<MovieModel>> getNowPlayingMovie() async {
    final response = await Dio().get(appConstance.nowPlayingMoviePath);

    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data['results'] ?? [] as List)
          .map((e) => MovieModel.fromJson(e)));
    } else {
      throw ServerExceptions(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<List<MovieModel>> getPopularMovie() async {
    final response = await Dio().get(appConstance.popularMoviePath);

    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data['results'] as List)
          .map((e) => MovieModel.fromJson(e)));
    } else {
      throw ServerExceptions(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<List<MovieModel>> getTopRatedMovie() async {
    final response = await Dio().get(appConstance.topRatedMoviePath);

    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data['results'] as List)
          .map((e) => MovieModel.fromJson(e)));
    } else {
      throw ServerExceptions(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }
}
