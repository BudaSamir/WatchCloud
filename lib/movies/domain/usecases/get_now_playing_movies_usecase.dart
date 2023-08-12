import 'package:dartz/dartz.dart';
import 'package:watch_cloud/core/usecase/base_usecases.dart';
import 'package:watch_cloud/movies/domain/entities/movies.dart';
import 'package:watch_cloud/movies/domain/repository/base_movies_repository.dart';

import '../../../core/error/failure.dart';

class GetNowPlayingMoviesUseCase
    implements BaseUseCases<List<Movies>, NoParameters> {
  final BaseMoviesRepository baseMoviesRepository;
  const GetNowPlayingMoviesUseCase({required this.baseMoviesRepository});

  @override
  Future<Either<Failure, List<Movies>>> call(NoParameters noParameters) async {
    return await baseMoviesRepository.getNowPlayingMovies();
  }
}
