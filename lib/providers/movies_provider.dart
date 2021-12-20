import 'package:flutter/material.dart';

class MoviesProvider extends ChangeNotifier {
  MoviesProvider() {
    print("MoviesProvider inicializado");
    this.getNowPlayingMovies();
  }

  getNowPlayingMovies() {
    print('getNowPlayingMovies');
  }
}
