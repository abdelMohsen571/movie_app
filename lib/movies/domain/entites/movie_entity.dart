import 'package:equatable/equatable.dart';

class MovieEntity extends Equatable {
  final int? id;
  final String? title;
  final List<int?> genreIds;
  final String? overView;
  final double? voteAverage;
  final String? backdorpPath;
  final String? releaseDate;

  MovieEntity(
      {required this.id,
      required this.title,
      required this.genreIds,
      required this.overView,
      required this.voteAverage,
      required this.backdorpPath,
      required this.releaseDate});

  @override
  List<Object> get props => [
        id!,
        title!,
        genreIds,
        overView!,
        voteAverage!,
        backdorpPath!,
        releaseDate!
      ];
}
