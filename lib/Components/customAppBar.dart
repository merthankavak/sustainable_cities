import 'package:flutter/material.dart';
import 'package:sustainable_cities/Components/customBackButton.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final bool isBack;
  final String routeName;
  final IconData icon;
  const CustomAppBar(
      {Key key, this.title, this.isBack, this.icon, this.routeName})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      centerTitle: true,
      title: Text(title),
      leading: Visibility(
        visible: isBack,
        child: CustomBackButton(),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 12.0, top: 5),
          child: IconButton(
            color: Colors.white,
            icon: Icon(
              icon,
            ),
            onPressed: () => Navigator.popAndPushNamed(context, routeName),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(70);
}
