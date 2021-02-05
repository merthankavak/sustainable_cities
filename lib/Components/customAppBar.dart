import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget with PreferredSizeWidget {
  final Widget title;
  CustomAppBar({Key key, this.title}) : super(key: key);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
  @override
  Size get preferredSize => Size.fromHeight(70);
}

class _CustomAppBarState extends State<CustomAppBar> {
  bool _loadingVisible = false;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      centerTitle: true,
      title: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: widget.title,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 12.0, top: 5),
          child: CircleAvatar(
            backgroundColor: Colors.green,
            child: IconButton(
              color: Colors.white,
              icon: Icon(
                Icons.help,
              ),
              onPressed: () async {
                await _changeLoadingVisible();
                await Navigator.popAndPushNamed(context, '/informationpage');
              },
            ),
          ),
        )
      ],
    );
  }

  Future<void> _changeLoadingVisible() async {
    setState(() {
      _loadingVisible = !_loadingVisible;
    });
  }
}
