import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:theme_light_dark/common_widgets/custom_textformfield.dart';

class MainContent extends StatelessWidget {
  const MainContent({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10,
              children: [
                // Text Widget
                Text(
                  'Display Large',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                Text(
                  'Display Medium',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                Text(
                  'Display Small',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                Text(
                  'Headline Large',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                Text(
                  'Headline Medium',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Text(
                  'Headline Small',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(
                  'Title Large',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  'Title Medium',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Text(
                  'Title Small',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                Text(
                  'Body Large',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Text(
                  'Body Medium',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Text(
                  'Body Small',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Text(
                  'Label Large',
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                Text(
                  'Label Medium',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                Text(
                  'Label Small',
                  style: Theme.of(context).textTheme.labelSmall,
                ),

                // TextFormField Widget
                CustomTextField(
                  label: 'Username',
                  hintText: 'Enter your username',
                  controller: TextEditingController(),
                ),
                CustomTextField(
                  label: 'Password',
                  hintText: 'Enter your password',
                  controller: TextEditingController(),
                  isPassword: true,
                  labelStyle: TextStyle(fontSize: 16.sp, color: Colors.blue),
                  hintStyle: TextStyle(fontSize: 14.sp, color: Colors.grey),
                  textStyle: TextStyle(fontSize: 14.sp, color: Colors.black),
                  fillColor: Colors.white,
                  borderColor: Colors.blue,
                  errorColor: Colors.red,
                  borderRadius: 12.0,
                ),

                // Theme Colors
                Container(
                  width: double.infinity,
                  height: 50,
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(
                          context,
                        ).colorScheme.primary.withValues(alpha: 0.2),
                        blurRadius: 4,
                        offset: const Offset(0, 2),
                      ),
                    ],
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  // Card background
                  child: Center(
                    child: Text(
                      'This is a card',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    foregroundColor: Theme.of(context).colorScheme.onPrimary,
                  ),
                  onPressed: null,
                  child: Text(
                    'Elevated Button',
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }
}