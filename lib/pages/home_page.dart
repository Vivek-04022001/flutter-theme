import 'package:circular_reveal_animation/circular_reveal_animation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:ui';
import 'package:sizer/sizer.dart';
import 'package:theme_light_dark/common_widgets/custom_textformfield.dart';
import 'package:theme_light_dark/pages/widget.dart';
import 'package:theme_light_dark/theme/theme_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _revealController;
  late Animation<double> _radiusAnimation;
  bool _showReveal = false;

  @override
  void initState() {
    super.initState();
    _revealController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );
    _radiusAnimation = CurvedAnimation(
      parent: _revealController,
      curve: Curves.easeInOutCirc,
    );
  }

  @override
  void dispose() {
    _revealController.dispose();
    super.dispose();
  }

  Future<void> _onTogglePressed() async {
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);

    setState(() {
      _showReveal = true; // show the overlay
    });

    // animate the circle from 0 → full
    await _revealController.forward();

    // switch the theme under the mask
    themeProvider.toggleTheme();

    // give Flutter one frame to rebuild under the mask
    await Future.delayed(Duration(milliseconds: 50));

    setState(() {
      _showReveal = false; // hide the overlay permanently
    });

    _revealController.reset(); // reset for the next toggle
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Stack(
        children: [
          MainContent(),
          if (_showReveal)
            AnimatedBuilder(
              animation: _radiusAnimation,
              builder:
                  (context, child) => CircularRevealAnimation(
                    animation: _radiusAnimation,
                    centerAlignment: Alignment.bottomRight,
                    minRadius: 0.0,
                    maxRadius: MediaQuery.of(context).size.longestSide * 1.2,
                    child: Container(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
            ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onTogglePressed,
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.brightness_6,
              color: Theme.of(
                context,
              ).colorScheme.onPrimary.withValues(alpha: 0.7),
            ),
            Text(
              themeProvider.themeMode == ThemeMode.light
                  ? 'Light'
                  : themeProvider.themeMode == ThemeMode.dark
                  ? 'Dark'
                  : 'System',
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
