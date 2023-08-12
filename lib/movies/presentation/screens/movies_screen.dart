import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:watch_cloud/core/services/locator_services/locator_services.dart';
import 'package:watch_cloud/movies/presentation/components/now_playing_component.dart';
import 'package:watch_cloud/movies/presentation/components/popular_component.dart';
import 'package:watch_cloud/movies/presentation/components/top_rated_component.dart';
import 'package:watch_cloud/movies/presentation/components/up_coming_component.dart';
import 'package:watch_cloud/movies/presentation/controllers/movies_controller/movies_bloc.dart';
import 'package:watch_cloud/movies/presentation/controllers/movies_controller/movies_event.dart';

class MainMoviesScreen extends StatelessWidget {
  const MainMoviesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => ls<MoviesBloc>()
        ..add(GetNowPlayingMoviesEvent())
        ..add(GetPopularMoviesEvent())
        ..add(GetTopRatedMoviesEvent())
        ..add(GetUpComingMoviesEvent()),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey.shade900,
          body: SingleChildScrollView(
            key: const Key('movieScrollView'),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const NowPlayingComponent(),
                Container(
                  margin: const EdgeInsets.fromLTRB(13.0, 24.0, 5.0, 12.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Popular",
                        style: GoogleFonts.poppins(
                          fontSize: 19,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.15,
                          color: Colors.white,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          /// TODO : NAVIGATION TO POPULAR SCREEN
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: const [
                              Text(
                                'See More',
                                style: TextStyle(color: Colors.white),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 16.0,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const PopularComponent(),
                Container(
                  margin: const EdgeInsets.fromLTRB(13.0, 24.0, 5.0, 12.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Top Rated",
                        style: GoogleFonts.poppins(
                          fontSize: 19,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.15,
                          color: Colors.white,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          /// TODO : NAVIGATION TO Top Rated Movies Screen
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: const [
                              Text(
                                'See More',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 16.0,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const TopRatedComponent(),
                Container(
                  margin: const EdgeInsets.fromLTRB(13.0, 24.0, 5.0, 12.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Up Coming",
                        style: GoogleFonts.poppins(
                          fontSize: 19,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.15,
                          color: Colors.white,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          /// TODO : NAVIGATION TO Top Rated Movies Screen
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: const [
                              Text(
                                'See More',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 16.0,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const UpComingComponent(),
                const SizedBox(height: 30.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
