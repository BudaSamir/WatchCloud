import 'package:dartz/dartz.dart';
import 'package:watch_cloud/core/error/failure.dart';
import 'package:watch_cloud/movies/data/models/recommendation_model.dart';
import 'package:watch_cloud/movies/domain/entities/movie_details.dart';
import 'package:watch_cloud/movies/domain/entities/movies.dart';
import 'package:watch_cloud/movies/domain/usecases/get_recommendation_usecase.dart';

import '../usecases/get_movie_details_usecase.dart';

abstract class BaseMoviesRepository {
  Future<Either<Failure, List<Movies>>> getNowPlayingMovies();
  Future<Either<Failure, List<Movies>>> getPopularMovies();
  Future<Either<Failure, List<Movies>>> getTopRatedMovies();
  Future<Either<Failure, List<Movies>>> getUpComingMovies();
  Future<Either<Failure, MovieDetails>> getMovieDetails(
      MovieDetailsParameters parameters);
  Future<Either<Failure, List<RecommendationModel>>> getRecommendation(
      RecommendationParameters parameters);
}
