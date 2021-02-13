import 'package:sustainable_cities/Screens/EarthQuakeQuiz/earthquake_quiz.dart';
import 'package:sustainable_cities/Screens/EarthQuakeQuiz/quiz_information.dart';

import 'package:sustainable_cities/Screens/EarthQuakeEconomy/earthquake_economy.dart';
import 'package:sustainable_cities/Screens/EarthQuakeZones/earthquake_prevent.dart';
import 'package:sustainable_cities/Screens/EarthQuakeZones/earthquake_zones.dart';
import 'package:sustainable_cities/Screens/emergency_call.dart';

import 'package:sustainable_cities/Screens/landing_page.dart';

class Routes {
  static const String earthquakeZones = EarthQuakeZones.routeName;
  static const String earthquakeQuiz = EarthQuakeQuiz.routeName;
  static const String earthquakeEconomy = EarthQuakeEconomy.routeName;
  static const String landingPage = LandingPage.routeName;
  static const String quizInformation = QuizInformation.routeName;
  static const String earthquakePrevent = EarthQuakePrevent.routeName;
  static const String emergencyCall = EmergencyCall.routeName;
}
