import 'package:flutter/rendering.dart';

class GridPadding extends SliverGridDelegateWithMaxCrossAxisExtent {
  const GridPadding()
      : super(
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
            childAspectRatio: 0.70,
            maxCrossAxisExtent: 200);
}
