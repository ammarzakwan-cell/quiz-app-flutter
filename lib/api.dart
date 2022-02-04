import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'models/question.dart';

class API {

  Future<List<Trivia>> fetchData() async {
    final response = await http.get(Uri.parse(
        'https://opentdb.com/api.php?amount=10&category=22&difficulty=easy&type=multiple'));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.

      List jsonResponse = json.decode(response.body)['results'];
      List<Trivia> questions = jsonResponse.map((data) => Trivia.fromJson(data)).toList();
      return questions;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load data');
    }
  }
}
