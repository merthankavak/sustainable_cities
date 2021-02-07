import 'package:flutter/material.dart';
import 'package:sustainable_cities/Components/customButton.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      title: answerText,
      textStyle: TextStyle(color: Colors.white, fontSize: 20),
      onPress: selectHandler,
    );
  }
}
