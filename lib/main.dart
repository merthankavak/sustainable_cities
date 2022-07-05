import 'package:flutter/material.dart';

import 'core/init/navigation/navigation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final _appRouter = Navigation();
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        theme: ThemeData.light()
            .copyWith(appBarTheme: const AppBarTheme().copyWith(centerTitle: true)),
        routeInformationParser: _appRouter.router.routeInformationParser,
        routeInformationProvider: _appRouter.router.routeInformationProvider,
        routerDelegate: _appRouter.router.routerDelegate);
  }
}
