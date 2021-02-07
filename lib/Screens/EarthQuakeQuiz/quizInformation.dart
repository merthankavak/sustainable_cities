import 'package:flutter/material.dart';
import 'package:sustainable_cities/Components/customScaffold.dart';

class QuizInformation extends StatefulWidget {
  static const String routeName = '/quizInformation';
  @override
  _QuizInformationState createState() => _QuizInformationState();
}

class _QuizInformationState extends State<QuizInformation> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      isBack: true,
      title: "QUIZ INFORMATION",
      body: Container(
        padding: EdgeInsets.only(top: 20, left: 20, right: 20),
        child: RichText(
          text: TextSpan(
            style: TextStyle(color: Colors.black, fontSize: 25),
            children: <TextSpan>[
              TextSpan(
                text: 'Score 0 - 6\n',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text:
                    '\nThere is no critical earthquake risk in your construction!!\n',
              ),
              TextSpan(
                text: '\nScore 7 - 12 ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text:
                    '\n There is no critical earthquake risk in your construction!!\n',
              ),
              TextSpan(
                text: '\nScore 13 - 20 ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text:
                    '\nThere is no critical earthquake risk in your construction!!\n',
              ),
              TextSpan(
                text: '\nScore 21 - 60 ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text:
                    '\nThere is no critical earthquake risk in your construction!!\n',
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
