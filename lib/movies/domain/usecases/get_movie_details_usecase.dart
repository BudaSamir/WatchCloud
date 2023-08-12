import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:watch_cloud/core/error/failure.dart';
import 'package:watch_cloud/core/usecase/base_usecases.dart';
import 'package:watch_cloud/movies/domain/entities/movie_details.dart';
import 'package:watch_cloud/movies/domain/repository/base_movies_repository.dart';

class GetMovieDetailsUseCase
    extends BaseUseCases<MovieDetails, MovieDetailsParameters> {
  final BaseMoviesRepository baseMoviesRepository;

  GetMovieDetailsUseCase({required this.baseMoviesRepository});

  @override
  Future<Either<Failure, MovieDetails>> call(
      MovieDetailsParameters parameters) async {
    return await baseMoviesRepository.getMovieDetails(parameters);
  }
}

class MovieDetailsParameters extends Equatable {
  final int movieId;

  const MovieDetailsParameters({required this.movieId});

  @override
  List<Object?> get props => [];
}
