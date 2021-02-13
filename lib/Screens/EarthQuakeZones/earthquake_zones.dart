import 'package:dropdown_formfield/dropdown_formfield.dart';

import 'package:flutter/material.dart';
import 'package:sustainable_cities/Components/constants.dart';
import 'package:sustainable_cities/Components/custom_scaffold.dart';
import 'package:sustainable_cities/Data/city_list.dart';

class EarthQuakeZones extends StatefulWidget {
  static const String routeName = '/earthquakeZones';
  @override
  _EarthQuakeZonesState createState() => _EarthQuakeZonesState();
}

class _EarthQuakeZonesState extends State<EarthQuakeZones> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _myActivity = "";
  bool _visible = false;

  String _myActivityResult = "";
  void initState() {
    super.initState();
    _myActivity = '';
    _myActivityResult = '';
  }

  @override
  Widget build(BuildContext context) {
    final dropdownLabel = Container(
      padding: EdgeInsets.all(16),
      child: DropDownFormField(
        titleText: 'City',
        value: _myActivity,
        onSaved: (value) {
          setState(() {
            value == null ? _visible = false : _myActivity = value;
          });
        },
        onChanged: (value) {
          setState(() {
            value == null ? _visible = false : _myActivity = value;
          });
        },
        dataSource: cityList,
        textField: 'display',
        valueField: 'value',
      ),
    );

    final calculateButton = Container(
      padding: EdgeInsets.all(16),
      width: double.infinity,
      child: FlatButton(
        color: Colors.blue,
        padding: EdgeInsets.all(16),
        child: const Text(
          'CALCULATE',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        onPressed: () async {
          _visible = true;
          await _saveForm();
        },
      ),
    );
    return CustomScaffold(
      isBack: true,
      title: "EARTHQUAKE ZONES",
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              dropdownLabel,
              sizedBox,
              calculateButton,
              SizedBox(height: 24.0),
              Visibility(
                visible: _visible,
                child: Container(
                  decoration: boxDecoration.copyWith(
                      color: resultColor(_myActivityResult)),
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  child: Center(
                    child: Text(
                      _myActivityResult,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ),
              sizedBox,
              Visibility(
                visible: _visible,
                child: InkWell(
                  highlightColor: Colors.black,
                  borderRadius: borderRadius,
                  child: Ink(
                    decoration: boxDecoration.copyWith(color: Colors.green),
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Center(
                      child: Text(
                        "HOW TO PREVENT EARTHQUAKE DAMAGE?",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                  onTap: () async {
                    await Navigator.popAndPushNamed(
                        context, "/earthquakePrevent");
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Return color by Earthquake Zone Level
  Color resultColor(String value) {
    if (value.contains("1")) {
      return Colors.red[800];
    } else if (value.contains("2")) {
      return Colors.red[400];
    } else if (value.contains("3")) {
      return Colors.red[200];
    } else {
      return Colors.white;
    }
  }

  _saveForm() {
    var form = _formKey.currentState;
    if (form.validate()) {
      form.save();
      setState(
        () {
          _myActivityResult = _myActivity;
        },
      );
    }
  }
}
