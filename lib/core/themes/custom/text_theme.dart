import 'package:flutter/material.dart';
import 'package:tdd_clean_architecture_sample/core/constants/colors.dart';

class BTextTheme {
  BTextTheme._();

  // Light Theme Text Styles
  static TextTheme lightTextTheme = TextTheme(
    // Display
    displayLarge: const TextStyle().copyWith(
      fontSize: 64.0, // Large headlines for splash screens or main titles
      fontWeight: FontWeight.bold,
      color: BColors.black,
    ),
    displayMedium: const TextStyle().copyWith(
      fontSize: 48.0, // Section titles, like "Featured Games"
      fontWeight: FontWeight.w400,
      color: BColors.black,
    ),
    displaySmall: const TextStyle().copyWith(
      fontSize: 40.0, // Smaller section titles, like "New Arrivals"
      fontWeight: FontWeight.w400,
      color: BColors.black,
    ),

    // Headlines
    headlineLarge: const TextStyle().copyWith(
      fontSize: 32.0, // Large headlines for splash screens or main titles
      fontWeight: FontWeight.bold,
      color: BColors.black,
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: 28.0, // Section titles, like "Featured Games"
      fontWeight: FontWeight.w600,
      color: BColors.black,
    ),
    headlineSmall: const TextStyle().copyWith(
      fontSize: 24.0, // Smaller section titles, like "New Arrivals"
      fontWeight: FontWeight.w600,
      color: BColors.black,
    ),
    titleLarge: const TextStyle().copyWith(
      fontSize: 20.0, // Form titles or major UI elements like tabs
      fontWeight: FontWeight.w600,
      color: BColors.black,
    ),
    titleMedium: const TextStyle().copyWith(
      fontSize: 18.0, // Button labels, card titles
      fontWeight: FontWeight.w500,
      color: BColors.black,
    ),
    titleSmall: const TextStyle().copyWith(
      fontSize: 16.0, // Smaller button text, secondary information
      fontWeight: FontWeight.w400,
      color: BColors.black,
    ),
    bodyLarge: const TextStyle().copyWith(
      fontSize: 16.0, // Main body text for paragraphs or descriptions
      fontWeight: FontWeight.normal,
      color: BColors.black,
    ),
    bodyMedium: const TextStyle().copyWith(
      fontSize: 14.0, // Subtext or additional details
      fontWeight: FontWeight.normal,
      color: BColors.black,
    ),
    bodySmall: const TextStyle().copyWith(
      fontSize: 12.0, // Small details like captions or hints
      fontWeight: FontWeight.normal,
      color: BColors.black,
    ),
    labelLarge: const TextStyle().copyWith(
      fontSize: 14.0, // Labels for inputs or prominent buttons
      fontWeight: FontWeight.w500,
      color: BColors.black.withOpacity(0.7),
    ),
    labelMedium: const TextStyle().copyWith(
      fontSize: 12.0, // Supporting labels or secondary button text
      fontWeight: FontWeight.normal,
      color: BColors.black.withOpacity(0.5),
    ),
    labelSmall: const TextStyle().copyWith(
      fontSize: 10.0, // Microcopy like tooltips or small labels
      fontWeight: FontWeight.normal,
      color: BColors.black.withOpacity(0.5),
    ),
  );

  // Dark Theme Text Styles
  static TextTheme darkTextTheme = TextTheme(
    // Display
    displayLarge: const TextStyle().copyWith(
      fontSize: 64.0,
      fontWeight: FontWeight.bold,
      color: BColors.white,
    ),
    displayMedium: const TextStyle().copyWith(
      fontSize: 48.0,
      fontWeight: FontWeight.w400,
      color: BColors.white,
    ),
    displaySmall: const TextStyle().copyWith(
      fontSize: 40.0,
      fontWeight: FontWeight.w400,
      color: BColors.white,
    ),
    headlineLarge: const TextStyle().copyWith(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: BColors.white,
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: 28.0,
      fontWeight: FontWeight.w600,
      color: BColors.white,
    ),
    headlineSmall: const TextStyle().copyWith(
      fontSize: 24.0,
      fontWeight: FontWeight.w600,
      color: BColors.white,
    ),
    titleLarge: const TextStyle().copyWith(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: BColors.white,
    ),
    titleMedium: const TextStyle().copyWith(
      fontSize: 18.0,
      fontWeight: FontWeight.w500,
      color: BColors.white,
    ),
    titleSmall: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: BColors.white,
    ),
    bodyLarge: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.normal,
      color: BColors.white,
    ),
    bodyMedium: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
      color: BColors.white,
    ),
    bodySmall: const TextStyle().copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      color: BColors.white,
    ),
    labelLarge: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: BColors.white.withOpacity(0.7),
    ),
    labelMedium: const TextStyle().copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      color: BColors.white.withOpacity(0.5),
    ),
    labelSmall: const TextStyle().copyWith(
      fontSize: 10.0,
      fontWeight: FontWeight.normal,
      color: BColors.white.withOpacity(0.5),
    ),
  );
}
