import 'package:flutter/material.dart';

import 'package:sustainable_cities/Components/customScaffold.dart';

class InformationPage extends StatefulWidget {
  static const String routeName = '/informationpage';
  @override
  _InformationPageState createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      isBack: true,
      title: "INFORMATION",
      body: Container(
        child: Text(
          "Velit occaecat magna proident excepteur ad proident eu aliqua.",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black, fontSize: 17),
        ),
      ),
    );
  }
}
