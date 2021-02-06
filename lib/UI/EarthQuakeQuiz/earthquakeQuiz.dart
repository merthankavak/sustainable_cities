import 'package:flutter/material.dart';

import 'package:sustainable_cities/Components/customAppBar.dart';
import 'package:sustainable_cities/Components/questionList.dart';

import 'package:sustainable_cities/UI/loadingBar.dart';
import 'package:sustainable_cities/UI/EarthQuakeQuiz/quiz.dart';
import 'package:sustainable_cities/UI/EarthQuakeQuiz/result.dart';

class EarthquakeQuiz extends StatefulWidget {
  static const String routeName = '/earthquakequiz';
  @override
  _EarthquakeQuizState createState() => _EarthquakeQuizState();
}

class _EarthquakeQuizState extends State<EarthquakeQuiz> {
  bool _loadingVisible = false;

  var _questionIndex = 0;
  var _totalScore = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          _questionIndex == 12 ? resultColor(_totalScore) : Colors.white,
      resizeToAvoidBottomPadding: false,
      appBar: CustomAppBar(
        title: Text("EARTHQUAKE QUIZ"),
      ),
      body: Loading(
        inAsyncCall: _loadingVisible,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: _questionIndex < questionsList.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: questionsList,
                ) //Quiz
              : Result(_totalScore, _resetQuiz),
        ), //Padding  ,
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
