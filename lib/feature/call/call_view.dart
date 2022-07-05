import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../product/enum/navigation_enum.dart';

class CallView extends StatefulWidget {
  const CallView({Key? key}) : super(key: key);

  @override
  State<CallView> createState() => _CallViewState();
}

class _CallViewState extends State<CallView> {
  final String _appBarTitle = 'Call';
  final String _floatingActionButtonText = 'Call 112';

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildAppBar(), body: Center(child: buildFloatingActionButtonLarge()));
  }

  AppBar buildAppBar() => AppBar(
        title: Text(_appBarTitle),
        leading: IconButton(
            onPressed: () => context.go(NavigationEnum.HOME_VIEW.rawValue),
            icon: const Icon(Icons.arrow_back)),
      );

  FloatingActionButton buildFloatingActionButtonLarge() {
    return FloatingActionButton.large(
        onPressed: () {
          launchUrl(Uri(scheme: 'tel', path: '112'));
        },
        child: Text(_floatingActionButtonText));
  }
}
