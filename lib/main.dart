import 'package:first_app/quiz.dart';
import 'package:first_app/result.dart';
import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

// void main() {
//   runApp(
//     MyApp(),
//   );
// }

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final questions = const [
    {
      'questionText': 'What\'s your favorite color ?',
      'answers': [
        {'text': 'Purple', 'score': 10},
        {'text': 'Black', 'score': 5},
        {'text': 'Red', 'score': 0},
        {'text': 'White', 'score': 3}
      ]
    },
    {
      'questionText': 'What\s your favorite animal ?',
      'answers': [
        {'text': 'Cat', 'score': 10},
        {'text': 'Horses', 'score': 8},
        {'text': 'Dog', 'score': 8},
        {'text': 'Cow', 'score': 4}
      ]
    },
    {
      'questionText': 'What\s your favorite game ?',
      'answers': [
        {'text': 'Minecraft', 'score': 4},
        {'text': 'GC', 'score': 10},
        {'text': 'LOL', 'score': 8},
        {'text': 'CS', 'score': 3}
      ]
    }
  ];
  var _questionIndex = 0;
  var _resulTotal = 0;
  void _pressButtonQuestion(int score) {
    _resulTotal += score;
    setState(() {
      _questionIndex++;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _resulTotal = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: _questionIndex < questions.length
            ? Quiz(questions, _pressButtonQuestion, _questionIndex)
            : Result(_resulTotal, _resetQuiz),
      ),
    );
  }
}
