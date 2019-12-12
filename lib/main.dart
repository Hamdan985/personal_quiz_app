import 'package:flutter/material.dart';
import 'package:personal_quiz_app/question.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(HomePage());

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int questionIndex = 0;

  void testFunction() {
    print('button pressed');
    setState(() {
      questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Personal Quiz App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Question(questionIndex),
            Answer(questionIndex),
          ],
        ),
      ),
    );
  }
}
