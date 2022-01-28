import 'package:clean_arch_mvvm/app/router/router.dart';
import 'package:clean_arch_mvvm/features/splash/presentation/view.dart';
import 'package:flutter/material.dart';

import 'managers/theme.dart';

class MyApp extends StatefulWidget {
  MyApp._internal();

  static final MyApp instance = MyApp._internal();

  factory MyApp() => instance;

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      onGenerateRoute: onGenerateRoute,
      debugShowCheckedModeBanner: false,
      theme: getApplicationTheme(),
      home: SplashView(),
    );
  }
}