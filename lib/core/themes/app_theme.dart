import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get light {
    return ThemeData(
      fontFamily: 'Montserrat', // Use a modern, appealing font
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.green,
        brightness: Brightness.light,
      ),
      useMaterial3: true,
      scaffoldBackgroundColor: const Color(0xFFF9FAFB),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xFFF9FAFB),
        elevation: 0,
        centerTitle: true,
      ),
      textTheme: Typography.blackMountainView.copyWith(
        headlineMedium: const TextStyle(
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.bold,
          letterSpacing: 1.1,
        ),
        bodyLarge: const TextStyle(fontFamily: 'Montserrat', fontSize: 18),
        titleMedium: const TextStyle(fontFamily: 'Montserrat'),
      ),
    );
  }

  static ThemeData get dark {
    return ThemeData(
      fontFamily: 'Montserrat',
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.green,
        brightness: Brightness.dark,
      ),
      useMaterial3: true,
      scaffoldBackgroundColor: const Color(0xFF121212),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xFF121212),
        elevation: 0,
        centerTitle: true,
      ),
      textTheme: Typography.whiteMountainView.copyWith(
        headlineMedium: const TextStyle(
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.bold,
          letterSpacing: 1.1,
        ),
        bodyLarge: const TextStyle(fontFamily: 'Montserrat', fontSize: 18),
        titleMedium: const TextStyle(fontFamily: 'Montserrat'),
      ),
    );
  }
}
