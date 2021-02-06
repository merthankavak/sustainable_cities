import 'package:flutter/material.dart';

final textInputDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white, width: 2),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.red, width: 2),
  ),
);

Widget containerWithColor = Container(
  color: Colors.blue.withAlpha(300),
);
