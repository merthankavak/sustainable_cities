import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../product/enum/navigation_enum.dart';
import '../../product/padding/page_padding.dart';
import '../../product/widget/result_card.dart';
import 'model/quiz_model.dart';
import 'model/score_model.dart';

class QuizView extends StatefulWidget {
  const QuizView({Key? key}) : super(key: key);

  @override
  State<QuizView> createState() => _QuizViewState();
}

class _QuizViewState extends State<QuizView> {
  final String _appBarTittle = 'Quiz';
  int _questionIndex = 0;
  int _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _changeQuestionIndex(int? score) {
    _totalScore += score!;
    if (_questionIndex < QuizModels.questionModels.length) {
      setState(() {
        _questionIndex++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: _questionIndex < QuizModels.questionModels.length
          ? Padding(padding: const PagePadding.all(), child: buildColumn(context))
          : Center(child: buildResultCard()),
    );
  }

  ResultCard buildResultCard() {
    return ResultCard(
      score: _totalScore,
      voidCallBackReset: _resetQuiz,
      scoreModel: ScoreModel(_totalScore),
    );
  }

  Column buildColumn(BuildContext context) {
    return Column(
      children: [
        Text(QuizModels.questionModels[_questionIndex].title,
            style: Theme.of(context).textTheme.subtitle1),
        Expanded(child: buildListView()),
      ],
    );
  }

  ListView buildListView() {
    return ListView.builder(
        shrinkWrap: true,
        itemBuilder: ((context, index) {
          return TextButton(
              onPressed: () {
                _changeQuestionIndex(
                    QuizModels.questionModels[_questionIndex].answerModelList[index].score);
              },
              child: Text(QuizModels.questionModels[_questionIndex].answerModelList[index].title));
        }),
        itemCount: QuizModels.questionModels[_questionIndex].answerModelList.length);
  }

  AppBar buildAppBar() => AppBar(
        title: Text(_appBarTittle),
        leading: IconButton(
            onPressed: () => context.go(NavigationEnum.HOME_VIEW.rawValue),
            icon: const Icon(Icons.arrow_back)),
      );
}
