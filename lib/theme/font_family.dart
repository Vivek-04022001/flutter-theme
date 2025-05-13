// lib/theme/font_family.dart

import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class AppFontFamily {
  static TextTheme applyFont(TextTheme base) {
    return GoogleFonts.oswaldTextTheme(base);
  }
}
