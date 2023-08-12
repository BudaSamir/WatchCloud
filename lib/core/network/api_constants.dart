class ApiConstants {
  static const String baseUrl = "https://api.themoviedb.org/3";
  static const String baseApiKey = "15c5a86f88b357bac4367a856db0e6f3";
  static const String nowPlayingMoviesPath =
      "$baseUrl/movie/now_playing?api_key=$baseApiKey";
  static const String popularMoviesPath =
      "$baseUrl/movie/popular?api_key=$baseApiKey";
  static const String topRatedMoviesPath =
      "$baseUrl/movie/top_rated?api_key=$baseApiKey";
  static const String upComingMoviesPath =
      "$baseUrl/movie/upcoming?api_key=$baseApiKey";
  static String movieDetailsPath(int movieId) =>
      "$baseUrl/movie/$movieId?api_key=$baseApiKey";
  static String recommendationPath(int movieId) =>
      "$baseUrl/movie/$movieId/recommendations?api_key=$baseApiKey";

  static const String baseImageUrl = "https://image.tmdb.org/t/p/w500";
  static String imageUrl(String path) => '$baseImageUrl$path';
}
