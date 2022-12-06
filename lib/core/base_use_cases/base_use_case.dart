import 'package:dartz/dartz.dart';

import '../../movies/domain/entites/movie_entity.dart';
import '../failure/failure.dart';

abstract class BaseUseCase<T> {
  Future<Either<Failure, T>> call();
}
