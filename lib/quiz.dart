import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  Function answerChosen;
  final index;

  Quiz(
      {@required this.questions,
      @required this.index,
      @required this.answerChosen});

  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[index]['index']),
        ...(questions[index]['answer'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerChosen(answer['score']), answer['text']);
        }).toList(),
      ],
    );
  }
}
