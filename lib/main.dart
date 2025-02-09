import 'package:flutter/material.dart';
import 'package:weather_app/core/di/dependency_injection.dart';
import 'package:weather_app/features/weather/presentation/weather_screen.dart';
import 'package:weather_app/styles/theme.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: skyBlueTheme,
      home: const WeatherScreen(),
    );
  }
}