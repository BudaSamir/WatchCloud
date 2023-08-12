import 'package:flutter/material.dart';
import 'package:watch_cloud/core/services/locator_services/locator_services.dart';

import 'movies/presentation/screens/movies_Screen.dart';

void main() {
  LocatorServices().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainMoviesScreen(),
    );
  }
}
