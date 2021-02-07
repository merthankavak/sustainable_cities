import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sustainable_cities/Screens/EarthQuakeQuiz/quizInformation.dart';
import 'package:sustainable_cities/Screens/EarthQuakeRisk/earthquakePrevent.dart';
import 'package:sustainable_cities/Screens/EarthQuakeRisk/earthquakeRisk.dart';

import 'package:sustainable_cities/Services/routes.dart';

import 'Screens/EarthQuakeQuiz/earthquakeQuiz.dart';
import 'Screens/informationPage.dart';
import 'Screens/landingPage.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LandingPage(),
      routes: {
        Routes.earthquakerisk: (context) => EarthquakeRisk(),
        Routes.earthquakequiz: (context) => EarthquakeQuiz(),
        Routes.informationpage: (context) => InformationPage(),
        Routes.landingpage: (context) => LandingPage(),
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
