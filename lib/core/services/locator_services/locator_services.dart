import 'package:get_it/get_it.dart';
import 'package:watch_cloud/movies/data/data_source/remote_data_source/movies_remote_data_source.dart';
import 'package:watch_cloud/movies/data/repository/movies_repository.dart';
import 'package:watch_cloud/movies/domain/repository/base_movies_repository.dart';
import 'package:watch_cloud/movies/domain/usecases/get_now_playing_movies_usecase.dart';
import 'package:watch_cloud/movies/domain/usecases/get_popular_movies_usecase.dart';
import 'package:watch_cloud/movies/domain/usecases/get_top_rated_movies_usecase.dart';
import 'package:watch_cloud/movies/domain/usecases/get_up_coming_movies_usecase.dart';
import 'package:watch_cloud/movies/presentation/controllers/movies_controller/movies_bloc.dart';

var ls = GetIt.instance;

class LocatorServices {
  void init() {
    // Remote Data Source Singleton Instance
    ls.registerLazySingleton<BaseMovieRemoteDataSource>(
        () => MovieRemoteDataSource());

    // Repository Singleton Instance
    ls.registerLazySingleton<BaseMoviesRepository>(
        () => MoviesRepository(baseMovieRemoteDataSource: ls()));

    // UseCase Singleton Instance
    ls.registerLazySingleton<GetNowPlayingMoviesUseCase>(
        () => GetNowPlayingMoviesUseCase(baseMoviesRepository: ls()));

    ls.registerLazySingleton<GetPopularMoviesUseCase>(
        () => GetPopularMoviesUseCase(baseMoviesRepository: ls()));

    ls.registerLazySingleton<GetTopRatedMoviesUseCase>(
        () => GetTopRatedMoviesUseCase(baseMoviesRepository: ls()));

    ls.registerLazySingleton<GetUpComingMoviesUseCase>(
        () => GetUpComingMoviesUseCase(baseMoviesRepository: ls()));

    // Movie Bloc Factory Instance
    ls.registerFactory<MoviesBloc>(() => MoviesBloc(ls(), ls(), ls(), ls()));
  }
}
