import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sustainable_cities/Components/customInkwell.dart';
import 'package:sustainable_cities/Components/customScaffold.dart';

class LandingPage extends StatefulWidget {
  static const String routeName = '/landingpage';
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      isBack: false,
      title: "UYGULAMA ISMI",
      body: GridView.count(
        padding: EdgeInsets.all(14.0),
        shrinkWrap: true,
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
        crossAxisCount: 2,
        childAspectRatio: 0.70,
        children: <Widget>[
          CustomInkWell(
            title: "EARTHQUAKE DAMAGE",
            icon: FontAwesomeIcons.questionCircle,
            routeName: "/earthquakequiz",
            color: Colors.blue,
          ),
          CustomInkWell(
            title: "EARTHQUAKE ZONE RISK",
            icon: Icons.dangerous,
            routeName: "/earthquakerisk",
            color: Colors.blue,
          ),
          CustomInkWell(
            title: "EARTHQUAKE INFORMATION",
            icon: FontAwesomeIcons.infoCircle,
            routeName: "/informationpage",
            color: Colors.blue,
          ),
          CustomInkWell(
            title: "ABOUT US",
            icon: FontAwesomeIcons.accessibleIcon,
            routeName: "/landingpage",
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
