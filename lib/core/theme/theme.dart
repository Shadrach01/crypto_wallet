import 'package:flutter/material.dart';

// For the light mode theme
ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    surface: Colors.grey.shade200,
  ),
);

// For the dark mode theme
ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    surface: Colors.black,
  ),
);
