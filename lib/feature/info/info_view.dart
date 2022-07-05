import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../product/enum/navigation_enum.dart';
import '../../product/padding/page_padding.dart';
import '../../product/widget/info_card.dart';
import 'model/info_model.dart';
import 'tab_indicator.dart';

class InfoView extends StatefulWidget {
  const InfoView({Key? key}) : super(key: key);
  @override
  State<InfoView> createState() => _InfoViewState();
}

class _InfoViewState extends State<InfoView> {
  final String _appBarTitle = 'Info';
  int _selectedIndex = 0;

  bool get _isLastPage => InfoModels.infoModels.length - 1 == _selectedIndex;

  void _incrementIndex([int? value]) {
    if (_isLastPage && value == null) {
      return;
    }
    _incrementSelectedPage(value);
  }

  void _incrementSelectedPage([int? value]) {
    setState(() {
      if (value != null) {
        _selectedIndex = value;
      } else {
        _selectedIndex++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildAppBar(), body: buildColumn());
  }

  AppBar buildAppBar() => AppBar(
        title: Text(_appBarTitle),
        leading: IconButton(
            onPressed: () => context.go(NavigationEnum.HOME_VIEW.rawValue),
            icon: const Icon(Icons.arrow_back)),
      );

  Column buildColumn() {
    return Column(
      children: [
        Expanded(child: Padding(padding: const PagePadding.allLow(), child: buildPageView())),
        TabIndicator(selectedIndex: _selectedIndex)
      ],
    );
  }

  PageView buildPageView() {
    return PageView.builder(
        onPageChanged: (value) {
          _incrementIndex(value);
        },
        itemCount: InfoModels.infoModels.length,
        itemBuilder: (context, index) {
          return InfoCard(model: InfoModels.infoModels[index]);
        });
  }
}
