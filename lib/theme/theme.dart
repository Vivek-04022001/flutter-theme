import 'package:flutter/material.dart';
import 'package:theme_light_dark/theme/app_colors_dark.dart';
import 'package:theme_light_dark/theme/app_colors_light.dart';
import 'package:theme_light_dark/theme/app_text_theme.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    primary: AppColorsLight.primary,
    onPrimary: AppColorsLight.onPrimary,
    secondary: AppColorsLight.secondary,
    onSecondary: AppColorsLight.onSecondary,
    surface: AppColorsLight.surface,
    onSurface: AppColorsLight.onSurface,
    error: AppColorsLight.error,
    onError: AppColorsLight.onError,
  ),
  textTheme: appTextTheme,
  
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
 colorScheme: ColorScheme(
    brightness: Brightness.dark,
    primary: AppColorsDark.primary,
    onPrimary: AppColorsDark.onPrimary,
    secondary: AppColorsDark.secondary,
    onSecondary: AppColorsDark.onSecondary,
    surface: AppColorsDark.surface,
    onSurface: AppColorsDark.onSurface,
    error: AppColorsDark.error,
    onError: AppColorsDark.onError,
  ),
  textTheme: appTextTheme,
  
);