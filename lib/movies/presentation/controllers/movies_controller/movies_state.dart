import 'package:equatable/equatable.dart';
import 'package:watch_cloud/core/utils/enums.dart';

import '../../../domain/entities/movies.dart';

class MoviesState extends Equatable {
  // Now Playing Movies
  final List<Movies> nowPlayingMovies;
  final RequestState nowPlayingState;
  final String nowPlayingMessage;
  // popular Movies
  final List<Movies> popularMovies;
  final RequestState popularState;
  final String popularMessage;
  // Top Rated Movies
  final List<Movies> topRatedMovies;
  final RequestState topRatedState;
  final String topRatedMessage;
  // UpComing Movies
  final List<Movies> upComingMovies;
  final RequestState upComingState;
  final String upComingMessage;

  const MoviesState({
    // Now Playing Movies
    this.nowPlayingMovies = const [],
    this.nowPlayingState = RequestState.loading,
    this.nowPlayingMessage = "",
    // popular Movies
    this.popularMovies = const [],
    this.popularState = RequestState.loading,
    this.popularMessage = "",
    // Top Rated Movies
    this.topRatedMovies = const [],
    this.topRatedState = RequestState.loading,
    this.topRatedMessage = "",
    // UpComing Movies
    this.upComingMovies = const [],
    this.upComingState = RequestState.loading,
    this.upComingMessage = "",
  });

  MoviesState copyWith({
    // Now Playing Movies
    List<Movies>? nowPlayingMovies,
    RequestState? nowPlayingState,
    String? nowPlayingMessage,
    // popular Movies
    List<Movies>? popularMovies,
    RequestState? popularState,
    String? popularMessage,
    // Top Rated Movies
    List<Movies>? topRatedMovies,
    RequestState? topRatedState,
    String? topRatedMessage,
    // UpComing Movies
    List<Movies>? upComingMovies,
    RequestState? upComingState,
    String? upComingMessage,
  }) {
    return MoviesState(
      // Now Playing Movies
      nowPlayingMovies: nowPlayingMovies ?? this.nowPlayingMovies,
      nowPlayingState: nowPlayingState ?? this.nowPlayingState,
      nowPlayingMessage: nowPlayingMessage ?? this.topRatedMessage,
      // popular Movies
      popularMovies: popularMovies ?? this.popularMovies,
      popularState: popularState ?? this.popularState,
      popularMessage: popularMessage ?? this.popularMessage,
      // Top Rated Movies
      topRatedMovies: topRatedMovies ?? this.topRatedMovies,
      topRatedState: topRatedState ?? this.topRatedState,
      topRatedMessage: topRatedMessage ?? this.topRatedMessage,
      // UpComing Movies
      upComingMovies: upComingMovies ?? this.upComingMovies,
      upComingState: upComingState ?? this.upComingState,
      upComingMessage: upComingMessage ?? this.upComingMessage,
    );
  }

  @override
  List<Object?> get props => [
        // Now Playing Movies
        nowPlayingMovies,
        nowPlayingState,
        nowPlayingMessage,
        // popular Movies
        popularMovies,
        popularState,
        popularMessage,
        // Top Rated Movies
        topRatedMovies,
        topRatedState,
        topRatedMessage,
        // UpComing Movies
        upComingMovies,
        upComingState,
        upComingMessage,
      ];
}
