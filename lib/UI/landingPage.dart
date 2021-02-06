import 'package:flutter/material.dart';

import 'package:sustainable_cities/UI/loadingBar.dart';

class LandingPage extends StatefulWidget {
  static const String routeName = '/landingpage';
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  bool _loadingVisible = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final gridViewElement1 = InkWell(
      highlightColor: Colors.black,
      borderRadius: BorderRadius.circular(20),
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.orange,
        ),
        child: Center(
          child: Text(
            "EARTHQUAKE QUIZ",
            textAlign: TextAlign.center,
<<<<<<< HEAD
            style: TextStyle(color: Colors.white, fontSize: 22),
=======
            style: TextStyle(color: Colors.white),
>>>>>>> 850db822dcf41d8de261a31656e0d41c05e8d96c
          ),
        ),
      ),
      onTap: () async {
        await _changeLoadingVisible();
        await Navigator.popAndPushNamed(context, "/earthquakequiz");
      },
    );

    final gridViewElement2 = InkWell(
      highlightColor: Colors.black,
      borderRadius: BorderRadius.circular(20),
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.blue,
        ),
        child: Center(
          child: Text(
<<<<<<< HEAD
            "EARTHQUAKE TEST",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 22),
=======
            "",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
>>>>>>> 850db822dcf41d8de261a31656e0d41c05e8d96c
          ),
        ),
      ),
      onTap: () async {
        await _changeLoadingVisible();
        await Navigator.popAndPushNamed(context, "/earthquakerisk");
      },
    );

    final gridViewElement3 = InkWell(
      highlightColor: Colors.black,
      borderRadius: BorderRadius.circular(20),
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.red,
        ),
        child: Center(
          child: Text(
            "EARTHQUAKE INFORMATION",
            textAlign: TextAlign.center,
<<<<<<< HEAD
            style: TextStyle(color: Colors.white, fontSize: 22),
=======
            style: TextStyle(color: Colors.white),
>>>>>>> 850db822dcf41d8de261a31656e0d41c05e8d96c
          ),
        ),
      ),
      onTap: () async {
        await _changeLoadingVisible();
        await Navigator.popAndPushNamed(context, "/informationpage");
      },
    );

    final gridViewElement4 = InkWell(
      highlightColor: Colors.black,
      borderRadius: BorderRadius.circular(20),
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.green,
        ),
        child: Center(
          child: Text(
            "ABOUT",
            textAlign: TextAlign.center,
<<<<<<< HEAD
            style: TextStyle(color: Colors.white, fontSize: 22),
=======
            style: TextStyle(color: Colors.white, fontSize: 25),
>>>>>>> 850db822dcf41d8de261a31656e0d41c05e8d96c
          ),
        ),
      ),
      onTap: () async {},
    );
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text("UYGULAMA ISMI"),
        centerTitle: true,
        backgroundColor: Colors.black,
        toolbarHeight: 65,
      ),
      body: Loading(
        inAsyncCall: _loadingVisible,
        child: Center(
          child: GridView.count(
<<<<<<< HEAD
            padding: EdgeInsets.all(14.0),
            shrinkWrap: true,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
            crossAxisCount: 2,
            childAspectRatio: 0.65,
            children: <Widget>[
              gridViewElement,
=======
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            crossAxisCount: 2,
            children: <Widget>[
              gridViewElement1,
>>>>>>> 850db822dcf41d8de261a31656e0d41c05e8d96c
              gridViewElement2,
              gridViewElement3,
              gridViewElement4
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _changeLoadingVisible() async {
    setState(() {
      _loadingVisible = !_loadingVisible;
    });
  }
}
