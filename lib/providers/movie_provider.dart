import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:peliculas/models/models.dart';

class MoviesProvider extends ChangeNotifier {
  String _apiKey = '8a7c9eb052300f7204c46d0b26fd4370';
  String _baseUrl = 'api.themoviedb.org';
  String _language = 'es-ES';
  
  List<Movie> onDisplayMovies = [];

  MoviesProvider() {
    print("MoviesProvider inicializando");
    getOnDisplayMovies();
  }

  getOnDisplayMovies() async {
    var url = Uri.https(_baseUrl, '3/movie/now_playing', {
      'api_key': _apiKey,
      'language': _language,
      'page': '1',
    });

    final response = await http.get(url);
    final nowPlayingResponse =
        NowPlayingResponse.fromJson(response.body);

    onDisplayMovies = nowPlayingResponse.results;
    notifyListeners();
  }
}
