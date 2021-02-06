import 'package:flutter/material.dart';

import 'package:sustainable_cities/Components/customAppBar.dart';

import 'package:sustainable_cities/UI/loadingBar.dart';

class InformationPage extends StatefulWidget {
  static const String routeName = '/informationpage';
  @override
  _InformationPageState createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  bool _loadingVisible = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        title: Text("INFORMATION"),
      ),
      body: Loading(
        inAsyncCall: _loadingVisible,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Container(
              child: Text(
                "Velit occaecat magna proident excepteur ad proident eu aliqua.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 17),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
