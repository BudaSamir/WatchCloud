import 'package:dio/dio.dart';
import 'package:watch_cloud/core/error/exception.dart';
import 'package:watch_cloud/core/network/api_constants.dart';
import 'package:watch_cloud/core/network/error_message_model.dart';
import 'package:watch_cloud/movies/data/models/movie_details_model.dart';
import 'package:watch_cloud/movies/data/models/movies_model.dart';
import 'package:watch_cloud/movies/data/models/recommendation_model.dart';
import 'package:watch_cloud/movies/domain/entities/movie_details.dart';
import 'package:watch_cloud/movies/domain/usecases/get_movie_details_usecase.dart';
import 'package:watch_cloud/movies/domain/usecases/get_recommendation_usecase.dart';

abstract class BaseMovieRemoteDataSource {
  Future<List<MoviesModel>> getNowPlayingMovies();
  Future<List<MoviesModel>> getPopularMovies();
  Future<List<MoviesModel>> getTopRatedMovies();
  Future<List<MoviesModel>> getUpComingMovies();
  Future<MovieDetails> getMovieDetails(MovieDetailsParameters parameters);
  Future<List<RecommendationModel>> getRecommendation(
      RecommendationParameters parameters);
}

class MovieRemoteDataSource implements BaseMovieRemoteDataSource {
  @override
  Future<List<MoviesModel>> getNowPlayingMovies() async {
    final response = await Dio().get(ApiConstants.nowPlayingMoviesPath);
    if (response.statusCode == 200) {
      return List<MoviesModel>.from((response.data["results"] as List)
          .map((json) => MoviesModel.fromJson(json)));
    } else {
      final ErrorMessageModel errorMessageModel =
          ErrorMessageModel.fromJson(response.data);
      throw ServerException(errorMessageModel: errorMessageModel);
    }
  }

  @override
  Future<List<MoviesModel>> getPopularMovies() async {
    final response = await Dio().get(ApiConstants.popularMoviesPath);
    if (response.statusCode == 200) {
      return List<MoviesModel>.from((response.data["results"] as List)
          .map((json) => MoviesModel.fromJson(json)));
    } else {
      final ErrorMessageModel errorMessageModel =
          ErrorMessageModel.fromJson(response.data);
      throw ServerException(errorMessageModel: errorMessageModel);
    }
  }

  @override
  Future<List<MoviesModel>> getTopRatedMovies() async {
    final response = await Dio().get(ApiConstants.topRatedMoviesPath);
    if (response.statusCode == 200) {
      return List<MoviesModel>.from((response.data["results"] as List)
          .map((json) => MoviesModel.fromJson(json)));
    } else {
      final ErrorMessageModel errorMessageModel =
          ErrorMessageModel.fromJson(response.data);
      throw ServerException(errorMessageModel: errorMessageModel);
    }
  }

  @override
  Future<List<MoviesModel>> getUpComingMovies() async {
    final response = await Dio().get(ApiConstants.upComingMoviesPath);
    if (response.statusCode == 200) {
      return List<MoviesModel>.from((response.data["results"] as List)
          .map((json) => MoviesModel.fromJson(json)));
    } else {
      final ErrorMessageModel errorMessageModel =
          ErrorMessageModel.fromJson(response.data);
      throw ServerException(errorMessageModel: errorMessageModel);
    }
  }

  @override
  Future<MovieDetails> getMovieDetails(
      MovieDetailsParameters parameters) async {
    final response =
        await Dio().get(ApiConstants.movieDetailsPath(parameters.movieId));
    if (response.statusCode == 200) {
      return MovieDetailsModel.fromJson(response.data);
    } else {
      final ErrorMessageModel errorMessageModel =
          ErrorMessageModel.fromJson(response.data);
      throw ServerException(errorMessageModel: errorMessageModel);
    }
  }

  @override
  Future<List<RecommendationModel>> getRecommendation(
      RecommendationParameters parameters) async {
    final response =
        await Dio().get(ApiConstants.recommendationPath(parameters.id));
    if (response.statusCode == 200) {
      return List<RecommendationModel>.from((response.data["results"] as List)
          .map((e) => RecommendationModel.formJson(e)));
    } else {
      final ErrorMessageModel errorMessageModel =
          ErrorMessageModel.fromJson(response.data);
      throw ServerException(errorMessageModel: errorMessageModel);
    }
  }
}
