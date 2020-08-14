import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questioncount;
  final Function questionIndex;
  Quiz({this.questions, this.questioncount, this.questionIndex});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questioncount]['questiontext'],
        ),
        ...(questions[questioncount]['answer'] as List<Map<String, Object>>)
            .map((answerlist) {
          return Answer(
              () => questionIndex(answerlist['score']), answerlist['text']);
        }).toList()
      ],
    );
  }
}
