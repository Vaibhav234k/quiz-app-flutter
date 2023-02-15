import 'package:flutter/material.dart';
import './question_widget.dart';
import './answer_widget.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final Function clicked;
  final int index;

  Quiz(this.question, this.clicked, this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          height: 200,
          child: question_widget(
            (question[index]['questiontext'] as String),
          ),
        ),
        ...(question[index]['answerlist'] as List<Map<String, Object>>)
            .map((answer) {
          return Answers(() => clicked(answer['score']), answer['choice']);
        }).toList(),
      ],
    );
  }
}
