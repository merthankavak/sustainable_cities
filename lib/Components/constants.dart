import 'package:flutter/material.dart';
import 'package:sustainable_cities/Models/answersModel.dart';
import 'package:sustainable_cities/Models/questionsModel.dart';

final textInputDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white, width: 2),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.red, width: 2),
  ),
);

Widget containerWithColor = Container(
  color: Colors.blue.withAlpha(300),
);
final List<QuestionModel> questionsList = [
  QuestionModel(
    'Soru 1',
    [
      AnswersModels("A", 2),
      AnswersModels("B", 2),
      AnswersModels("C", 2),
    ],
  ),
  QuestionModel(
    ' Soru 2',
    [
      AnswersModels("A", 2),
      AnswersModels("B", 2),
      AnswersModels("C", 2),
    ],
  ),
  QuestionModel(
    'Soru 3',
    [
      AnswersModels("A", 2),
      AnswersModels("B", 2),
      AnswersModels("C", 4),
    ],
  ),
];
