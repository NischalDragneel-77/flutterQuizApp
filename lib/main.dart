// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  final _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Crimson', 'Blue', 'Grey', 'White'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion', 'Tiger'],
    },
    {
      'questionText': 'What\'s your favorite instructor?',
      'answers': ['Sushil', 'Manoj', 'Gajendra', 'Rajesh'],
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      // ignore: avoid_print
      print('we have more questions');
    } else {
      print('No more questions!');
    }
    // ignore: avoid_print
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('My first Flutter App'),
          centerTitle: true,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion as void Function(),
                questions: _questions,
                questionIndex: _questionIndex)
            : Result(),
      ),
    );
  }
}
