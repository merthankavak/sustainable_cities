import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:titled_navigation_bar/titled_navigation_bar.dart';

final List<TitledNavigationBarItem> items = [
  TitledNavigationBarItem(title: Text('Home'), icon: FontAwesomeIcons.home),
  TitledNavigationBarItem(
      title: Text('Test'), icon: FontAwesomeIcons.ccDiscover),
  TitledNavigationBarItem(title: Text('Help'), icon: FontAwesomeIcons.user),
];
