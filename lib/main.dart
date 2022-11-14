import 'package:flutter/material.dart';
import 'package:nt_challenge/onboarding/onboarding_screen.dart';
import 'package:nt_challenge/shared/themes/dark_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Neural Trainer',
      debugShowCheckedModeBanner: false,
      darkTheme: getDarkTheme(),
      themeMode: ThemeMode.dark,
      home: const MyOnboardingScreen(),
    );
  }
}
