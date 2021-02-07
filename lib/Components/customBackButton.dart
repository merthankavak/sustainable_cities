import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      color: Colors.white,
      icon: Icon(
        Icons.arrow_back,
      ),
      onPressed: () => Navigator.popAndPushNamed(context, "/landingpage"),
    );
  }
}
