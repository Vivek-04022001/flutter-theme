import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:theme_light_dark/pages/home_page.dart';
import 'package:theme_light_dark/pages/splash_screen.dart';
import 'package:theme_light_dark/theme/theme.dart';
import 'package:theme_light_dark/theme/theme_provider.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (context) => ThemeProvider(), child: Sizer(
    builder: (context, orientation, deviceType) {
      return const MyApp();
    },
  )));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:  lightMode,
      darkTheme: darkMode,
      themeMode: themeProvider.themeMode,
      home: SplashScreen(),
    );
  }
}

