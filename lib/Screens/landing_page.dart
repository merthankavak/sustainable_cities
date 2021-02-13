import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sustainable_cities/Components/custom_inkwell.dart';
import 'package:sustainable_cities/Components/custom_scaffold.dart';

class LandingPage extends StatefulWidget {
  static const String routeName = '/landingPage';
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      isBack: false,
      title: "EARTHQUAKE HELPER",
      body: GridView.count(
        padding: EdgeInsets.all(14.0),
        shrinkWrap: true,
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
        crossAxisCount: 2,
        childAspectRatio: 0.70,
        children: <Widget>[
          CustomInkWell(
            title: "ARE YOU UNDER RISK?",
            icon: FontAwesomeIcons.questionCircle,
            routeName: "/earthquakeQuiz",
            color: Colors.red,
          ),
          CustomInkWell(
            title: "EARTHQUAKE ZONES",
            icon: FontAwesomeIcons.mapMarked,
            routeName: "/earthquakeZones",
            color: Colors.orange,
          ),
          CustomInkWell(
            title: "EFFECTS OF EARTHQUAKE",
            icon: FontAwesomeIcons.chartLine,
            routeName: "/earthquakeEconomy",
            color: Colors.green[800],
          ),
          CustomInkWell(
            title: "EMERGENCY CALL",
            icon: Icons.warning,
            routeName: "/emergencyCall",
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
