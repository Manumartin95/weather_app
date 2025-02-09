import 'package:flutter/material.dart';

ThemeData skyBlueTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.lightBlue,
    brightness: Brightness.light,
  ),
  appBarTheme: const AppBarTheme(
    elevation: 4.0,
    scrolledUnderElevation: 4.0,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
    ),
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
  ),
  textTheme: TextTheme(
    bodyLarge: const TextStyle(
      color: Colors.black87,
    ),
    bodyMedium: const TextStyle(
      color: Colors.black87,
    ),
    bodySmall: const TextStyle(
      color: Colors.black87,
    ),
    titleLarge: const TextStyle(
        color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 40),
    titleMedium: const TextStyle(
        color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 36),
    titleSmall: const TextStyle(
        color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 30),
    labelLarge: const TextStyle(
      color: Colors.black54,
    ),
    labelMedium: const TextStyle(
      color: Colors.black54,
    ),
    labelSmall: const TextStyle(
      color: Colors.black54,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
      textStyle: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: 24.0,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: Colors.blue,
      textStyle: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: 24.0,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
  ),
);
