import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../feature/zones/model/zones_model.dart';

class ZoneCard extends StatelessWidget {
  const ZoneCard({Key? key, required this.model}) : super(key: key);
  final ZoneModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: context.paddingHigh,
        decoration: BoxDecoration(
            color: model.colorsWithName, borderRadius: BorderRadius.all(context.lowRadius)),
        child: Center(child: Text(model.desc)));
  }
}
