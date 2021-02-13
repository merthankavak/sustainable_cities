import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sustainable_cities/Screens/EarthQuakeQuiz/quiz_information.dart';
import 'package:sustainable_cities/Screens/EarthQuakeZones/earthquake_prevent.dart';
import 'package:sustainable_cities/Screens/EarthQuakeZones/earthquake_zones.dart';
import 'package:sustainable_cities/Screens/emergency_call.dart';

import 'package:sustainable_cities/Services/routes.dart';

import 'Screens/EarthQuakeQuiz/earthquake_quiz.dart';
import 'Screens/EarthQuakeEconomy/earthquake_economy.dart';
import 'Screens/landing_page.dart';

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
        Routes.emergencyCall: (context) => EmergencyCall(),
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
