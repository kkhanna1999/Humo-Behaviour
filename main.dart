import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var index = 0;
  var totalScore=0;
  static const question = [
    {
       'questionText': 'How often do you interact with people in crowd/party?',
      'answers': [
        {'text': 'very often', 'score': 20},
        {'text': 'often', 'score': 15},
        {'text': 'sometimes', 'score': 10},
        {'text' : 'rarely' , 'score' : 5},
      ]
    },
    {
      'questionText': 'When in typical situations do you take decisions of your mind or heart?',
      'answers': [
        {'text': 'mind', 'score': 20},
        {'text': 'heart', 'score': 15},
        {'text': 'none', 'score': 5},
      ]
    },
    'questionText': 'When struct in difficult situations, How often Do u take help of others?',
      'answers': [
        {'text': 'Always', 'score': 5},
        {'text': 'sometimes', 'score': 10},
        {'text': 'rarely', 'score': 15},
      ]
    },
    'questionText': 'How often you remember your dreams? ',
      'answers': [
        {'text': 'Always', 'score': 15},
        {'text': 'sometimes', 'score': 10},
        {'text': 'rarely', 'score': 5},
      ]
    },
    'questionText': 'Does your role model for you changes frequently?',
      'answers': [
        {'text': 'Yes', 'score': 5},
        {'text': 'No', 'score': 10},
        {'text': 'Don\'t know', 'score': 0},
      ]
    },
    {
      'questionText': 'What\'s your fav colour',
      'answers': [
        {'text': 'blue', 'score': 10},
        {'text': 'green', 'score': 15},
        {'text': 'pink', 'score': 8},
        {'text' : 'none' , 'score' : 5},
      ]
    },
      'questionText': 'What\'s fav animal',
      'answers': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'lion', 'score': 15},
        {'text': 'elephant', 'score': 18},
        {'text' : 'none' , 'score' : 5},
      ]
    },
  ];
  void answerChosen(int score) {
    totalScore+=score;
    setState(() {
      index = index + 1;
    });
    print(index);
  }
  void resetQuiz(){
    setState(() {
      index=0;
      totalScore=0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first page'),
        ),
        body: index < question.length
            ? Quiz(
                answerChosen: answerChosen,
                index: index,
                question: question,
              )
            : Result(totalScore,resetQuiz),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}
