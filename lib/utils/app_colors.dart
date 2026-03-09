import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Colors.black;
  static const Color primaryDark = Colors.black;
  static const Color backgroundLight = Colors.white;
  static const Color backgroundDark = Colors.black;
  static const Color textLight = Colors.black;
  static const Color textDark = Colors.white;
  static const Color textSecondary = Colors.grey;
  static const Color divider = Color(0xFFE0E0E0);
  static const Color dividerDark = Color(0xFF424242);
  static const Color blue = Color(0xFF1877F2); // Instagram link blue
  static const Color red = Color(0xFFED4956); // Heart red

  static const LinearGradient storyGradient = LinearGradient(
    colors: [
      Color(0xFFFEDA75),
      Color(0xFFFA7E1E),
      Color(0xFFD62976),
      Color(0xFF962FBF),
      Color(0xFF4F5BD5),
    ],
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
  );
}
