import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:sustainable_cities/Services/routes.dart';
import 'package:sustainable_cities/UI/EarthQuakeQuiz/earthquakeQuiz.dart';

import 'package:sustainable_cities/UI/earthquakeTest.dart';
import 'package:sustainable_cities/UI/informationPage.dart';
import 'package:sustainable_cities/UI/landingPage.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LandingPage(),
      routes: {
        Routes.earthquaketest: (context) => EarthquakeTest(),
        Routes.earthquakequiz: (context) => EarthquakeQuiz(),
        Routes.informationpage: (context) => InformationPage(),
        Routes.landingpage: (context) => LandingPage(),
      },
    );
  }
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));

  runApp(MyApp());
}
