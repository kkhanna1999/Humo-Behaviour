import 'package:flutter/material.dart';

class Answer extends StatelessWidget{
  final Function curIndex;
  final String answerValue;
  Answer(this.curIndex , this.answerValue);
  @override
  Widget build(BuildContext context){
    return Container(
      width: double.infinity,
      child: RaisedButton(
              color: Colors.lightGreenAccent,
              textColor: Colors.blue,
              child: Text(answerValue),
              onPressed: curIndex,
            ),
    );
  }
}