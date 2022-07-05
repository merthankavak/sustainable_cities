import 'package:flutter/material.dart';

import 'model/info_model.dart';

class TabIndicator extends StatefulWidget {
  final int selectedIndex;
  const TabIndicator({Key? key, required this.selectedIndex}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _TabIndicatorState createState() => _TabIndicatorState();
}

class _TabIndicatorState extends State<TabIndicator> with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void didUpdateWidget(covariant TabIndicator oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.selectedIndex != widget.selectedIndex) {
      _tabController.animateTo(widget.selectedIndex);
    }
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: InfoModels.infoModels.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return TabPageSelector(controller: _tabController);
  }
}
