import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sustainable_cities/Components/constants.dart';
import 'package:sustainable_cities/Components/customAppBar.dart';

import 'package:sustainable_cities/UI/loadingBar.dart';

class EarthquakeTest extends StatefulWidget {
  static const String routeName = '/earthquaketest';
  @override
  _EarthquakeTestState createState() => _EarthquakeTestState();
}

class _EarthquakeTestState extends State<EarthquakeTest> {
  bool _loadingVisible = false;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final inputLabel1 = TextFormField(
      keyboardType: TextInputType.numberWithOptions(),
      autofocus: false,
      decoration: textInputDecoration.copyWith(
          prefixIcon: Icon(Icons.dynamic_feed_outlined, color: Colors.black),
          hintText: "...",
          helperText: "How many floors does your building include?",
          helperStyle: TextStyle(fontSize: 14)),
      style: TextStyle(
        color: Colors.black,
      ),
    );

    final inputLabel2 = TextFormField(
      keyboardType: TextInputType.numberWithOptions(),
      autofocus: false,
      decoration: textInputDecoration.copyWith(
          prefixIcon: Icon(Icons.dynamic_feed_outlined, color: Colors.black),
          hintText: "...",
          helperText: "Building floor count",
          helperStyle: TextStyle(fontSize: 14)),
      style: TextStyle(
        color: Colors.black,
      ),
    );

    final inputLabel3 = TextFormField(
      autofocus: false,
      decoration: textInputDecoration.copyWith(
        hintText: "...",
        helperText: "Years of the building",
        helperStyle: TextStyle(fontSize: 14),
        prefixIcon: Icon(
          FontAwesomeIcons.building,
          color: Colors.black,
        ),
      ),
      style: TextStyle(color: Colors.black),
      onChanged: (String str) {
        setState(() {});
      },
    );

    final calculateButton = Container(
      margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
      width: double.infinity,
      child: FlatButton(
        color: Colors.green,
        padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
        child: const Text(
          'CALCULATE',
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () async {},
      ),
    );
    return Scaffold(
      backgroundColor: Colors.brown[300],
      resizeToAvoidBottomPadding: false,
      appBar: CustomAppBar(
        title: Text("EARTHQUAKE TEST"),
      ),
      body: Loading(
        inAsyncCall: _loadingVisible,
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                inputLabel1,
                SizedBox(height: 24.0),
                inputLabel2,
                SizedBox(height: 24.0),
                inputLabel3,
                SizedBox(height: 24.0),
                calculateButton,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
