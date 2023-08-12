import 'package:dartz/dartz.dart';
import 'package:watch_cloud/core/error/exception.dart';
import 'package:watch_cloud/core/error/failure.dart';
import 'package:watch_cloud/movies/data/data_source/remote_data_source/movies_remote_data_source.dart';
import 'package:watch_cloud/movies/data/models/recommendation_model.dart';
import 'package:watch_cloud/movies/domain/entities/movie_details.dart';
import 'package:watch_cloud/movies/domain/entities/movies.dart';
import 'package:watch_cloud/movies/domain/repository/base_movies_repository.dart';
import 'package:watch_cloud/movies/domain/usecases/get_recommendation_usecase.dart';

import '../../domain/usecases/get_movie_details_usecase.dart';

class MoviesRepository implements BaseMoviesRepository {
  final BaseMovieRemoteDataSource baseMovieRemoteDataSource;

  const MoviesRepository({required this.baseMovieRemoteDataSource});

  @override
  Future<Either<Failure, List<Movies>>> getNowPlayingMovies() async {
    final result = await baseMovieRemoteDataSource.getNowPlayingMovies();
    try {
      return right(result);
    } on ServerException catch (failure) {
      return left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Movies>>> getPopularMovies() async {
    final result = await baseMovieRemoteDataSource.getPopularMovies();
    try {
      return right(result);
    } on ServerException catch (failure) {
      return left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Movies>>> getTopRatedMovies() async {
    final result = await baseMovieRemoteDataSource.getTopRatedMovies();
    try {
      return right(result);
    } on ServerException catch (failure) {
      return left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Movies>>> getUpComingMovies() async {
    final result = await baseMovieRemoteDataSource.getUpComingMovies();
    try {
      return right(result);
    } on ServerException catch (failure) {
      return left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, MovieDetails>> getMovieDetails(
      MovieDetailsParameters parameters) async {
    final result = await baseMovieRemoteDataSource.getMovieDetails(parameters);
    try {
      return right(result);
    } on ServerException catch (failure) {
      return left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<RecommendationModel>>> getRecommendation(
      RecommendationParameters parameters) async {
    final result =
        await baseMovieRemoteDataSource.getRecommendation(parameters);

    try {
      return right(result);
    } on ServerException catch (failure) {
      return left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }
}
