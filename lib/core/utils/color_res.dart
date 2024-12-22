import 'package:flutter/material.dart';

class ColorRes {
  ColorRes._();

  static const Color backgroundColor = Color(0xFF0D1B2A);
  static const Color whiteColor = Color(0xFFFFFFFF);
  static const Color containerColor = Color(0xFFFF991C);

  // gradient color
  static const LinearGradient containerGradient = LinearGradient(
    colors: [
      Color(0xFF324a5f),
      Color(0xFF0d1b2a),
    ],
    stops: [0.2, 0.6],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
