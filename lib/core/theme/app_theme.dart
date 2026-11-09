import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import 'text_theme.dart';

abstract final class AppTheme {
  static ThemeData get light => ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.softWhite,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.emeraldGreen,
          primary: AppColors.emeraldGreen,
          secondary: AppColors.mintGreen,
          surface: AppColors.white,
          error: AppColors.errorRed,
        ),
        textTheme: AppTextTheme.light,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.softWhite,
          foregroundColor: AppColors.darkCharcoal,
          centerTitle: false,
          elevation: 0,
        ),
        cardTheme: CardThemeData(
          color: AppColors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: const BorderSide(color: AppColors.lightGray),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: AppColors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: AppColors.lightGray),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: AppColors.lightGray),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.emeraldGreen,
            foregroundColor: AppColors.white,
            minimumSize: const Size.fromHeight(48),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          ),
        ),
      );
}
