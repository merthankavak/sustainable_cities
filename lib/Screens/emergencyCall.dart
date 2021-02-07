import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart' as UrlLauncher;
import 'package:sustainable_cities/Components/customScaffold.dart';

class EmergencyCall extends StatefulWidget {
  static const String routeName = '/emergencyCall';
  @override
  _EmergencyCallState createState() => _EmergencyCallState();
}

class _EmergencyCallState extends State<EmergencyCall> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      color: Colors.white,
      isBack: true,
      title: "EMERGENCY CALL",
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(250.0),
            color: Colors.red,
          ),
          width: 250,
          height: 250,
          child: FlatButton(
              highlightColor: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(250.0),
                  side: BorderSide(color: Colors.red)),
              onPressed: () => UrlLauncher.launch("tel://184"),
              child: Text(
                "CALL 184",
                style: TextStyle(fontSize: 25, color: Colors.white),
              )),
        ),
      ),
    );
  }
}
