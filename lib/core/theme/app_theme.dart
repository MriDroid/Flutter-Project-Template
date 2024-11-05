import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';

ThemeData appTheme() {
  return ThemeData(
    useMaterial3: true,
    fontFamily: 'Expo Arabic',
    colorScheme: const ColorScheme.light(),
    appBarTheme: _appBarTheme(),
    cardTheme: const CardTheme(
      color: Colors.white,
    ),
    elevatedButtonTheme: _elevatedButtonTheme(),
    textButtonTheme: _textButtonTheme(),
    inputDecorationTheme: _inputDecorationTheme(),
  );
}

AppBarTheme _appBarTheme() {
  return AppBarTheme(
    backgroundColor: AppColors.primary,
    elevation: 2.5,
    titleTextStyle: TextStyle(
      fontSize: 20.sp,
      fontWeight: FontWeight.bold,
      color: Colors.white,
      fontFamily: 'Expo Arabic',
    ),
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
  );
}

ElevatedButtonThemeData _elevatedButtonTheme() {
  return ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32),
      ),
      textStyle: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
        fontFamily: 'Expo Arabic',
      ),
    ),
  );
}

TextButtonThemeData _textButtonTheme() {
  return TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: AppColors.primary,
      visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
      padding: const EdgeInsets.all(0),
      splashFactory: NoSplash.splashFactory,
      textStyle: TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w500,
        fontFamily: 'Expo Arabic',
      ),
    ),
  );
}

InputDecorationTheme _inputDecorationTheme() {
  return InputDecorationTheme(
    border: const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(32),
      ),
      borderSide: BorderSide(
        color: AppColors.border,
      ),
    ),
    enabledBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(32),
      ),
      borderSide: BorderSide(
        color: AppColors.border,
      ),
    ),
    errorBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(32),
      ),
      borderSide: BorderSide(
        color: Colors.red,
      ),
    ),
    isDense: true,
    contentPadding: const EdgeInsets.symmetric(
      vertical: 12,
      horizontal: 16,
    ),
    hintStyle: TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w500,
      color: const Color(0xFF898D8E),
    ),
    labelStyle: TextStyle(
      fontSize: 12.sp,
    ),
    floatingLabelStyle: TextStyle(
      fontSize: 14.sp,
    ),
  );
}
