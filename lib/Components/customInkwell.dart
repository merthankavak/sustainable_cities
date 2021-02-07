import 'package:flutter/material.dart';

import 'constants.dart';

class CustomInkWell extends StatelessWidget {
  final IconData icon;
  final String routeName;
  final String title;
  final Color color;
  const CustomInkWell(
      {Key key, this.icon, this.routeName, this.title, this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.black,
      borderRadius: BorderRadius.circular(20),
      child: Ink(
        decoration: boxDecoration.copyWith(color: color),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: TextStyle(color: Colors.white, fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
            Icon(
              icon,
              size: 45,
              color: Colors.white,
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.popAndPushNamed(context, routeName);
      },
    );
  }
}
