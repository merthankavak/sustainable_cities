import 'package:flutter/material.dart';

import 'package:sustainable_cities/Models/questions_model.dart';
import 'package:sustainable_cities/Screens/EarthQuakeQuiz/answer.dart';
import 'package:sustainable_cities/Screens/EarthQuakeQuiz/question.dart';

class Quiz extends StatelessWidget {
  final List<QuestionModel> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex].questionText,
        ),
        ...(questions[questionIndex].answersList).map((answer) {
          return Answer(() => answerQuestion(answer.score), answer.text);
        }).toList()
      ],
    );
  }
}
