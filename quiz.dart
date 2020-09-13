import 'package:flutter/material.dart';

import './question.dart';

import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final Function answerChosen;
  final int index;
  Quiz({
    @required this.question,
    @required this.answerChosen,
    @required this.index,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question[index]['questionText']),
        ...(question[index]['answers'] as List<Map<String,Object>>).map((answer) {
          return Answer(()=>answerChosen(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
