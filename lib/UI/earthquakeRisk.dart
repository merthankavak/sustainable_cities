import 'package:dropdown_formfield/dropdown_formfield.dart';

import 'package:flutter/material.dart';
import 'package:sustainable_cities/Components/cityList.dart';

import 'package:sustainable_cities/Components/customAppBar.dart';

class EarthquakeRisk extends StatefulWidget {
  static const String routeName = '/earthquakerisk';
  @override
  _EarthquakeRiskState createState() => _EarthquakeRiskState();
}

class _EarthquakeRiskState extends State<EarthquakeRisk> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _myActivity = "";

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
        hintText: 'Please choose your city',
        value: _myActivity,
        onSaved: (value) {
          setState(() {
            _myActivity = value;
          });
        },
        onChanged: (value) {
          setState(() {
            _myActivity = value;
          });
        },
        dataSource: cityList,
        textField: 'display',
        valueField: 'value',
      ),
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
        onPressed: () async {
          await _saveForm();
        },
      ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: false,
      appBar: CustomAppBar(
        title: Text("EARTHQUAKE RISK"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                dropdownLabel,
                SizedBox(height: 24.0),
                calculateButton,
                SizedBox(height: 24.0),
                Container(child: Text(_myActivityResult)),
              ],
            ),
          ),
        ),
      ),
    );
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
