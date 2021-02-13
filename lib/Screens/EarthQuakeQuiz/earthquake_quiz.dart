import 'package:flutter/material.dart';

import 'package:sustainable_cities/Components/custom_scaffold.dart';
import 'package:sustainable_cities/Data/question_list.dart';
import 'package:sustainable_cities/Screens/EarthQuakeQuiz/quiz.dart';
import 'package:sustainable_cities/Screens/EarthQuakeQuiz/result.dart';

class EarthQuakeQuiz extends StatefulWidget {
  static const String routeName = '/earthquakeQuiz';
  @override
  _EarthQuakeQuizState createState() => _EarthQuakeQuizState();
}

class _EarthQuakeQuizState extends State<EarthQuakeQuiz> {
  var _questionIndex = 0;
  var _totalScore = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      icon: Icons.help,
      routeName: "/quizInformation",
      isBack: true,
      title: "EARTHQUAKE QUIZ",
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          color: _questionIndex == 12 ? resultColor(_totalScore) : Colors.white,
          child: _questionIndex < questionsList.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: questionsList,
                )
              : Result(_totalScore, _resetQuiz),
        ),
      ),
    );
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < questionsList.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  // Return color
  Color resultColor(int resultScore) {
    if (resultScore >= 0 && resultScore <= 6) {
      return Colors.green[800];
    } else if (resultScore >= 7 && resultScore <= 12) {
      return Colors.green[200];
    } else if (resultScore >= 13 && resultScore <= 20) {
      return Colors.red[200];
    } else if (resultScore >= 21 && resultScore <= 60) {
      return Colors.red[800];
    } else {
      return Colors.white;
    }
  }
}
