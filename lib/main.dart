import 'dart:io';

import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
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
  final questions = const [
    //u can use var,int,final,const as well
    {
      'index': 'Who got Orage Cap this year?',
      'answer': [
        {'text': 'KL Rahul', 'score': 1},
        {'text': 'Virat Kohli', 'score': 0},
        {'text': 'Shikhar Dhawan', 'score': 0},
        {'text': 'David Warner', 'score': 0},
      ],
    },
    {
      'index': 'Who got Purple Cap this year?',
      'answer': [
        {'text': 'Jasprit Bumbrah', 'score': 0},
        {'text': 'Kagiso Rabada', 'score': 1},
        {'text': 'Jofra Archer', 'score': 0},
        {'text': 'Trent Boult', 'score': 0},
      ],
    },
    {
      'index': 'Who won Emerging Player award this year?',
      'answer': [
        {'text': 'Ishan Kishan', 'score': 0},
        {'text': 'Riyan Prayag', 'score': 0},
        {'text': 'Devdatt Padikkal', 'score': 1},
        {'text': 'Ruturaj Gaikwad', 'score': 0},
      ],
    },
    {
      'index': 'Who scored the highest score this season ?',
      'answer': [
        {'text': 'RR', 'score': 0},
        {'text': 'DC', 'score': 1},
        {'text': 'RCB', 'score': 0},
        {'text': 'MI', 'score': 0},
      ],
    },
    {
      'index': 'Who scored the lowest score this season?',
      'answer': [
        {'text': 'RCB', 'score': 0},
        {'text': 'KXIP', 'score': 0},
        {'text': 'CSK', 'score': 0},
        {'text': 'KKR', 'score': 1},
      ],
    },
  ];
  var index = 0;
  var flag = true;
  var total_score = 0;

  void answerChosen(int score) {
    setState(() {
      total_score = total_score + score;
      index = index + 1;
    });

    print("You chose :)");
    print("index is ");
    print(index);
    print("total score is");
    print(total_score);
  }

  void reset() {
    setState(() {
      index = 0;
      total_score = 0;
    });
    print("let us start again :)");
    print(index);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text(
          "                            IPL QUIZ",
        ),
      ),
      body: index < 5
          ? Quiz(questions: questions, index: index, answerChosen: answerChosen)
          : Result(reset, total_score),
    ));
  }
}
