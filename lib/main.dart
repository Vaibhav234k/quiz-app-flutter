// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int index = 0;
  int totalScore = 0;
  var question = [
    {
      'questiontext': 'What is your favorite color?',
      'answerlist': [
        {'choice': 'Red', 'score': 10},
        {'choice': 'Blue', 'score': 20},
        {'choice': 'Pink', 'score': 40},
        {'choice': 'Black', 'score': 0}
      ]
    },
    {
      'questiontext': 'Who is your favorite teacher?',
      'answerlist': [
        {'choice': 'Shilpa', 'score': 40},
        {'choice': 'Chirag', 'score': 10},
        {'choice': 'Charmi', 'score': 20},
        {'choice': 'Vaibhav', 'score': 0}
      ]
    },
    {
      'questiontext': 'Which is your favorite subject?',
      'answerlist': [
        {'choice': 'COA', 'score': 40},
        {'choice': 'DM', 'score': 0},
        {'choice': 'OS', 'score': 20},
        {'choice': 'AJT', 'score': 10}
      ]
    },
    {
      'questiontext': 'Who is your favorite person in class?',
      'answerlist': [
        {'choice': 'Somy', 'score': 40},
        {'choice': 'Bhavitt', 'score': 20},
        {'choice': 'Neer', 'score': 10},
        {'choice': 'Amlim', 'score': 0}
      ]
    },
    {
      'questiontext': 'How long does it take you to reply to a friend?',
      'answerlist': [
        {'choice': 'Within minutes', 'score': 20},
        {'choice': '10-30 minutes', 'score': 0},
        {'choice': 'A couple of hours', 'score': 10},
        {'choice': 'the next day', 'score': 40}
      ]
    },
    {
      'questiontext': 'Do you smoke?',
      'answerlist': [
        {'choice': 'No', 'score': 0},
        {'choice': 'Some times', 'score': 10},
        {'choice': 'Every day', 'score': 40},
        {'choice': 'Rather not say', 'score': 20},
      ]
    },
    {
      'questiontext': 'Pick soda',
      'answerlist': [
        {'choice': 'Coca-cola', 'score': 20},
        {'choice': 'Pepsi', 'score': 10},
        {'choice': 'Sprite', 'score': 0},
        {'choice': 'Mountain Dew', 'score': 40},
      ]
    },
    {
      'questiontext': 'Pick food',
      'answerlist': [
        {'choice': 'Momos', 'score': 20},
        {'choice': 'Burger', 'score': 10},
        {'choice': 'Dosa', 'score': 0},
        {'choice': 'Pizza', 'score': 40},
      ]
    },
    {
      'questiontext': 'did you enjoyed?',
      'answerlist': [
        {'choice': 'Yes', 'score': 0},
        {'choice': 'Yes', 'score': 0},
        {'choice': 'Yes', 'score': 0},
        {'choice': 'Yes', 'score': 0}
      ]
    }
  ];
  void clicked(int score) {
    setState(() {
      totalScore += score;
      index = index + 1;
    });
    print('Clicked...');
  }

  void restart() {
    setState(() {
      index = 0;
      totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: index < question.length
            ? Quiz(question, clicked, index)
            : Result(totalScore, restart),
      ),
    );
  }
}
