import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../feature/info/model/info_model.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({Key? key, required this.model}) : super(key: key);
  final InfoModel model;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: buildColumn(context));
  }

  Column buildColumn(BuildContext context) {
    return Column(
      children: [
        Text(model.title, style: Theme.of(context).textTheme.headline4),
        Text(model.desc),
        context.emptySizedHeightBoxLow3x,
        Image.asset(model.imageWithPath, fit: BoxFit.contain, height: context.height * 0.3)
      ],
    );
  }
}
