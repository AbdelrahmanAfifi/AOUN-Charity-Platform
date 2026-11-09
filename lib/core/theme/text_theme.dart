import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

abstract final class AppTextTheme {
  static const arabicFont = 'Cairo';
  static const englishFont = 'Poppins';

  static TextTheme get light => const TextTheme(
        displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        headlineLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
        headlineMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        titleLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        bodyLarge: TextStyle(fontSize: 16),
        bodyMedium: TextStyle(fontSize: 14),
        labelLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
      ).apply(
          bodyColor: AppColors.darkCharcoal,
          displayColor: AppColors.darkCharcoal);
}
