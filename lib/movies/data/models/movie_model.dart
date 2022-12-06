import 'package:movie_app/movies/domain/entites/movie_entity.dart';

class MovieModel extends MovieEntity {
  MovieModel(
      {required super.id,
      required super.title,
      required super.genreIds,
      required super.overView,
      required super.voteAverage,
      required super.backdorpPath,
      required super.releaseDate});

  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
      id: json['id'],
      title: json['title'],
      genreIds: List<int>.from(json['"genre_ids'] ?? [].map((e) => e)),
      overView: json['overview'],
      voteAverage: json['vote_average'].toDouble(),
      backdorpPath: json['backdrop_path'],
      releaseDate: json['release_date']);
}
