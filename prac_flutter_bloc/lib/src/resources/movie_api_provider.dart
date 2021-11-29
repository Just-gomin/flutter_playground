/*
 *  API에서 영화 정보를 요청하는 주체
 */

import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' show Client;

import 'package:prac_flutter_bloc/src/models/item_model.dart';
import 'package:prac_flutter_bloc/prac_flutter_envs.dart';

class MovieApiProvider {
  Client client = Client();
  final _apiKey = TMDB_API_KEY;

  Future<ItemModel> fetchMovieList() async {
    print("entered");
    final response = await client.get(Uri.parse(
        "https://api.themoviedb.org/3/movie/popular?api_key=$_apiKey"));
    print(response.body.toString());
    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      return ItemModel.fromJson(json.decode(response.body));
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load post');
    }
  }
}
