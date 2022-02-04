import 'package:flutter/material.dart';
import 'package:html_character_entities/html_character_entities.dart';

import '../models/question.dart';

class TriviaWidget extends StatelessWidget {
  final List<Trivia> questions;
  final int questionIndex;
  final Function(String) answerQuestion;

  TriviaWidget({
    required this.questions,
    required this.questionIndex,
    required this.answerQuestion,
  });

  var html = HtmlCharacterEntities.decode;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          margin: EdgeInsets.all(10),
          child: Text('${questionIndex + 1}. ${html(questions[questionIndex].question)}',
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
        ),
        ...(questions[questionIndex].answers)
            .map(
              (data) => Container(
                width: double.infinity,
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text(html(data)),
                  onPressed: () => answerQuestion(data),
                ),
              ),
            )
            .toList(),
      ],
    );
  }
}
