import 'package:flutter/material.dart';

import 'constants.dart';

class CustomInkWell extends StatefulWidget {
  final IconData icon;
  final String routeName;
  final String title;
  final Color color;
  const CustomInkWell(
      {Key key, this.icon, this.routeName, this.title, this.color})
      : super(key: key);

  @override
  _CustomInkWellState createState() => _CustomInkWellState();
}

class _CustomInkWellState extends State<CustomInkWell> {
  bool _loadingVisible = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.black,
      borderRadius: BorderRadius.circular(20),
      child: Ink(
        decoration: boxDecoration.copyWith(color: widget.color),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.title,
                style: TextStyle(color: Colors.white, fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
            Icon(
              widget.icon,
              size: 45,
              color: Colors.white,
            ),
          ],
        ),
      ),
      onTap: () async {
        await _changeLoadingVisible();
        await Navigator.popAndPushNamed(context, widget.routeName);
      },
    );
  }

  Future<void> _changeLoadingVisible() async {
    setState(() {
      _loadingVisible = !_loadingVisible;
    });
  }
}
