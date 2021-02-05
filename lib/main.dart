import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:sustainable_cities/Services/routes.dart';
import 'package:sustainable_cities/UI/analysisPage.dart';
import 'package:sustainable_cities/UI/homePage.dart';
import 'package:sustainable_cities/UI/informationPage.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        Routes.homepage: (context) => HomePage(),
        Routes.analysispage: (context) => AnalysisPage(),
        Routes.informationpage: (context) => InformationPage(),
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
