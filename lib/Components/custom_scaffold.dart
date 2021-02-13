import 'package:flutter/material.dart';
import 'package:sustainable_cities/Components/custom_appbar.dart';

class CustomScaffold extends StatelessWidget {
  final Widget body;
  final String title;
  final String backButton;
  final bool isBack;
  final IconData icon;
  final String routeName;
  final Color color;
  const CustomScaffold({
    Key key,
    this.body,
    this.title,
    this.backButton,
    this.isBack,
    this.icon,
    this.routeName,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: color,
      appBar: CustomAppBar(
        title: title,
        isBack: isBack,
        icon: icon,
        routeName: routeName,
      ),
      body: body,
    );
  }
}
