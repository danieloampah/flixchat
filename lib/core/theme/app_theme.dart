import 'package:flix_chat/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

TextTheme _textTheme = const TextTheme(
  headlineLarge: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      fontFamily: 'JosefinSans',
      color: AppColors.white),
  headlineMedium: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      fontFamily: 'JosefinSans',
      color: AppColors.white),
  headlineSmall: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      fontFamily: 'JosefinSans',
      color: AppColors.white),
  bodyLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      fontFamily: 'JosefinSans',
      color: AppColors.white),
  bodyMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      fontFamily: 'JosefinSans',
      color: AppColors.white),
  labelLarge: TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
    fontFamily: 'JosefinSans',
  ),
);

ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: AppColors.scaffoldBackgroundDark,
  useMaterial3: true,
  textTheme: _textTheme
);
