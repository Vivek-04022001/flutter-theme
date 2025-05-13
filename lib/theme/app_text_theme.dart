import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:theme_light_dark/theme/font_family.dart';
final TextTheme appTextTheme = AppFontFamily.applyFont(
   TextTheme(
  displayLarge: TextStyle(fontSize: 48.sp, fontWeight: FontWeight.bold),
  displayMedium: TextStyle(fontSize: 40.sp, fontWeight: FontWeight.bold),
  displaySmall: TextStyle(fontSize: 34.sp, fontWeight: FontWeight.w700),
  headlineLarge: TextStyle(fontSize: 30.sp, fontWeight: FontWeight.w700),
  headlineMedium: TextStyle(fontSize: 26.sp, fontWeight: FontWeight.w600),
  headlineSmall: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.w600),
  titleLarge: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
  titleMedium: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
  titleSmall: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
  bodyLarge: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.normal),
  bodyMedium: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.normal),
  bodySmall: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.normal),
  labelLarge: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
  labelMedium: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
  labelSmall: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w500),
)
);