import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_movies/models/models.dart';
import 'package:http/http.dart' as http;

class MoviesProvider extends ChangeNotifier {
  final String _apiKey = 'bb02ade96fae10ec9449428b989741d9';
  final String _baseUrl = 'api.themoviedb.org';
  final String _language = 'en-US';

  MoviesProvider() {
    print("MoviesProvider inicializado");
    getNowPlayingMovies();
  }

  getNowPlayingMovies() async {
    print('getNowPlayingMovies');
    var url = Uri.https(
      _baseUrl,
      '/3/movie/now_playing',
      {
        'api_key': _apiKey,
        'language': _language,
        'page': '1',
      },
    );

    final response = await http.get(url);
    final nowPlaying = NowPlayingResponse.fromJson(response.body);
    print(nowPlaying.results[0].title);
  }
}
