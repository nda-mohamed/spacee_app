import 'package:flutter/material.dart';
import 'Screens/HomeScreen.dart';
import 'Screens/LoginScreen.dart';
import 'Screens/PlanetDetailsScreen.dart';
import 'core/route/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Space App',
      theme: ThemeData.dark(),

      initialRoute: AppRoute.LoginScreen.name,
      routes: {
        AppRoute.LoginScreen.name : (_) =>  LoginScreen(),
        AppRoute.HomeScreen.name : (context) =>  Homescreen(),
        AppRoute.PlanetDetailsScreen.name : (_) =>  PlanetDetailsScreen(),
      },
    );
  }
}