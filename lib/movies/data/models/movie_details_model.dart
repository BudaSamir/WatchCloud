import 'package:watch_cloud/movies/data/models/genres_model.dart';
import 'package:watch_cloud/movies/domain/entities/movie_details.dart';

class MovieDetailsModel extends MovieDetails {
  const MovieDetailsModel(
      {required super.backdropPath,
      required super.genres,
      required super.id,
      required super.overview,
      required super.releaseDate,
      required super.runtime,
      required super.title,
      required super.voteAverage,
      required super.homePage});

  factory MovieDetailsModel.fromJson(Map<String, dynamic> json) =>
      MovieDetailsModel(
        backdropPath: json["backdrop_path"],
        genres: List<GenresModel>.from(
            json['genres'].map((x) => GenresModel.fromJson(x))).toList(),
        id: json["id"],
        overview: json["overview"],
        releaseDate: json["release_date"],
        runtime: json['runtime'],
        title: json["title"],
        voteAverage: json["vote_average"].toDouble(),
        homePage: json["homepage"],
      );
}
