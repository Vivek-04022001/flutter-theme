import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppConstants {
  // APP INFO
  static const String appName = 'My Flutter App';
  static const String appVersion = '1.0.0';

  // FONT FAMILY
  static TextTheme applyFontFamily(TextTheme base) {
    return GoogleFonts.plusJakartaSansTextTheme(base);
  }

  // FONT SIZES
  static const double heading1Size = 48;
  static const double heading2Size = 40;
  static const double bodyTextSize = 16;
  static const double smallTextSize = 12;

  // SPACINGS
  static const double defaultPadding = 16.0;
  static const double smallPadding = 8.0;
  static const double defaultBorderRadius = 12.0;

  // ICONS
  static const IconData appIcon = Icons.flutter_dash;

  // COLORS (optional quick access, better to separate in theme)
  static const Color primaryColor = Color(0xFF2196F3);
  static const Color secondaryColor = Color(0xFFFFC107);

  // API BASE URL (optional)
  static const String apiBaseUrl = 'https://api.myapp.com';
}
