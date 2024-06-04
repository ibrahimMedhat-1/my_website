import 'package:flutter/material.dart';

class LightTheme {
  static generate() {
    return ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          elevation: 5,
          centerTitle: false,
          shadowColor: Colors.black,
          backgroundColor: Colors.white,
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            fontSize: 40,
          ),
          bodySmall: TextStyle(
            fontSize: 20,
            color: Colors.grey,
          ),
        ));
  }
}
