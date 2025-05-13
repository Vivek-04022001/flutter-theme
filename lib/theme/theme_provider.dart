import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.system; // Default: System

  ThemeMode get themeMode => _themeMode;

  void setThemeMode(ThemeMode mode) {
    _themeMode = mode;
    notifyListeners();
  }

  // Toggle function (optional)
  void toggleTheme() {
    if (_themeMode == ThemeMode.light) {
      _themeMode = ThemeMode.dark;
    } else if (_themeMode == ThemeMode.dark) {
      _themeMode = ThemeMode.system;
    } else {
      _themeMode = ThemeMode.light;
    }
    notifyListeners();
  }
}


/*
final themeProvider = Provider.of<ThemeProvider>(context, listen: false);

// Light Mode
themeProvider.setThemeMode(ThemeMode.light);

// Dark Mode
themeProvider.setThemeMode(ThemeMode.dark);

// System Mode
themeProvider.setThemeMode(ThemeMode.system);

// Toggle Light/Dark (optional, not system)
themeProvider.toggleTheme();

*/