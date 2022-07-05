import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kartal/kartal.dart';

import '../../feature/home/model/home_model.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({Key? key, required this.model}) : super(key: key);
  final HomeModel model;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
          primary: model.color,
          shape: const RoundedRectangleBorder().copyWith(borderRadius: context.normalBorderRadius)),
      onPressed: () => context.go(model.route),
      icon: model.icon,
      label: Text(model.title),
    );
  }
}
