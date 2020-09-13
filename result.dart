import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  final Function reset;

  String get resutltPhrase {
    String resultShow = 'You did it!';
    if (resultScore >= 20)
      resultShow = 'Okay cool you achieved good score' +
          'Your score is' +
          resultScore.toString();
    else
      resultShow =
          'Better luck next time' + 'Your score is' + resultScore.toString();
    return resultShow;
  }

  Result(this.resultScore, this.reset);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          resutltPhrase,
          style: TextStyle(
              fontSize: 32,
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          child: Text('Reset Quiz'),
          onPressed: reset,
        ),
      ],
    );
  }
}
