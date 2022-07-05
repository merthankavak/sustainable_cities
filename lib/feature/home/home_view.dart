import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../product/padding/grid_padding.dart';
import '../../product/widget/home_card.dart';
import 'model/home_model.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final String _appBarTitle = 'Earthquake Helper';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: buildGridView(context),
    );
  }

  AppBar buildAppBar() => AppBar(title: Text(_appBarTitle));

  GridView buildGridView(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(context.lowValue),
      gridDelegate: const GridPadding(),
      itemCount: HomeModels.homeModels.length,
      itemBuilder: (context, index) => HomeCard(model: HomeModels.homeModels[index]),
    );
  }
}
