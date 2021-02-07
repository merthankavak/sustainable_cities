import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sustainable_cities/Screens/EarthQuakeQuiz/quizInformation.dart';
import 'package:sustainable_cities/Screens/EarthQuakeZones/earthquakePrevent.dart';
import 'package:sustainable_cities/Screens/EarthQuakeZones/earthquakeZones.dart';

import 'package:sustainable_cities/Services/routes.dart';

import 'Screens/EarthQuakeQuiz/earthquakeQuiz.dart';
import 'Screens/EarthQuakeEconomy/earthquakeEconomy.dart';
import 'Screens/landingPage.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LandingPage(),
      routes: {
        Routes.earthquakeZones: (context) => EarthQuakeZones(),
        Routes.earthquakeQuiz: (context) => EarthQuakeQuiz(),
        Routes.earthquakeEconomy: (context) => EarthQuakeEconomy(),
        Routes.landingPage: (context) => LandingPage(),
        Routes.quizInformation: (context) => QuizInformation(),
        Routes.earthquakePrevent: (context) => EarthQuakePrevent(),
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
