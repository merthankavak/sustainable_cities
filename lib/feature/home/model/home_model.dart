import 'package:flutter/material.dart';

import '../../../product/enum/navigation_enum.dart';

class HomeModel {
  final String title;
  final String route;
  final Icon icon;
  final Color color;

  HomeModel(this.title, this.route, this.icon, this.color);
}

class HomeModels {
  static final List<HomeModel> homeModels = [
    HomeModel('Earthquake Quiz', NavigationEnum.QUIZ_VIEW.rawValue,
        const Icon(Icons.question_answer), Colors.red),
    HomeModel('Earthquake Zones', NavigationEnum.ZONES_VIEW.rawValue, const Icon(Icons.map),
        Colors.orange),
    HomeModel('Effects of Earthquake', NavigationEnum.INFO_VIEW.rawValue,
        const Icon(Icons.attach_money), Colors.green),
    HomeModel(
        'Emergency Call', NavigationEnum.CALL_VIEW.rawValue, const Icon(Icons.call), Colors.blue),
  ];
}
