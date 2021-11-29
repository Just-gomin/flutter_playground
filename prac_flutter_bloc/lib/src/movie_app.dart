/*
 * Project의 Main Widget
 */

import 'package:flutter/material.dart';
import 'ui/movie_list.dart';

class MovieApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: MovieList(),
      ),
    );
  }
}
