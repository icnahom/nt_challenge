import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nt_challenge/shared/themes/colors.dart';

getDarkTheme() {
  final colorScheme = ColorScheme.fromSeed(
    seedColor: primaryColor,
    brightness: Brightness.dark,
  ).copyWith(
    primary: primaryColor,
    background: Colors.black,
  );
  final baseTheme = ThemeData.from(colorScheme: colorScheme);
  final textTheme = GoogleFonts.rubikTextTheme(baseTheme.textTheme);
  final primaryTextTheme = GoogleFonts.rubikTextTheme(baseTheme.primaryTextTheme);

  return baseTheme.copyWith(
    textTheme: textTheme.copyWith(
      headlineSmall: textTheme.headlineSmall?.copyWith(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
      ),
      headlineMedium: textTheme.headlineMedium?.copyWith(
        color: colorScheme.primary,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
      ),
    ),
    primaryTextTheme: primaryTextTheme.copyWith(
      labelLarge: primaryTextTheme.labelLarge?.copyWith(
        color: colorScheme.onPrimary,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
