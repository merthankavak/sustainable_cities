import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Function onPress;
  final TextStyle textStyle;
  const CustomButton({Key key, this.title, this.onPress, this.textStyle})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        highlightColor: Colors.black,
        textColor: Colors.white,
        child: Text(
          title,
          style: textStyle,
          textAlign: TextAlign.center,
        ),
        onPressed: onPress,
      ),
    );
  }
}
