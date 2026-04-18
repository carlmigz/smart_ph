import 'package:flutter/material.dart';
import 'package:smart_ph/app/theme/colors.dart';

class AppTheme {
  const AppTheme._();

  static ThemeData light() {
    return ThemeData(
      scaffoldBackgroundColor: AppColors.white,
      appBarTheme: AppBarThemeData(backgroundColor: AppColors.white),
      colorScheme: ColorScheme.fromSeed(seedColor: AppColors.lightGreen),
    );
  }
}
