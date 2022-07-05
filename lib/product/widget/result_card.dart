import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../feature/quiz/model/score_model.dart';
import '../padding/page_padding.dart';

class ResultCard extends StatelessWidget {
  final String _textButtonTitle = 'Reset';
  final VoidCallback voidCallBackReset;
  final ScoreModel scoreModel;
  final int score;

  const ResultCard(
      {Key? key, required this.score, required this.voidCallBackReset, required this.scoreModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const PagePadding.all(),
      child: Column(
        children: [
          Text('Score: $score'),
          context.emptySizedHeightBoxLow3x,
          Text(scoreModel.scoreWithDesc),
          context.emptySizedHeightBoxLow3x,
          TextButton(onPressed: voidCallBackReset, child: Text(_textButtonTitle))
        ],
      ),
    );
  }
}
