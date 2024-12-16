import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tdd_clean_architecture_sample/core/constants/colors.dart';
import 'package:tdd_clean_architecture_sample/core/themes/custom/app_bar_theme.dart';
import 'package:tdd_clean_architecture_sample/core/themes/custom/bottom_sheet_theme.dart';
import 'package:tdd_clean_architecture_sample/core/themes/custom/check_box_theme.dart';
import 'package:tdd_clean_architecture_sample/core/themes/custom/chip_theme.dart';
import 'package:tdd_clean_architecture_sample/core/themes/custom/elevated_button_theme.dart';
import 'package:tdd_clean_architecture_sample/core/themes/custom/outlined_button_theme.dart';
import 'package:tdd_clean_architecture_sample/core/themes/custom/switch_theme.dart';
import 'package:tdd_clean_architecture_sample/core/themes/custom/text_field_theme.dart';
import 'package:tdd_clean_architecture_sample/core/themes/custom/text_theme.dart';

class BAppTheme {
  BAppTheme._();

  static void setStatusBarStyle({bool isDarkMode = false}) {
    SystemUiOverlayStyle systemUiOverlayStyle = const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarDividerColor: Colors.transparent,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    );
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }

  // Light theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: BColors.primary,
    textTheme: BTextTheme.lightTextTheme,
    chipTheme: BChipTheme.lightChipTheme,
    scaffoldBackgroundColor: BColors.background,
    appBarTheme: BAppBarTheme.lightAppBarTheme,
    checkboxTheme: BCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: BBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: BElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: BOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: BTextFieldTheme.lightInputDecorationTheme,
    switchTheme: BSwitchTheme.lightSwitchTheme,
  );

  // Dark Theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: BColors.white,
    textTheme: BTextTheme.darkTextTheme,
    chipTheme: BChipTheme.darkChipTheme,
    scaffoldBackgroundColor: BColors.white,
    appBarTheme: BAppBarTheme.darkAppBarTheme,
    checkboxTheme: BCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: BBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: BElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: BOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: BTextFieldTheme.darkInputDecorationTheme,
    switchTheme: BSwitchTheme.darkSwitchTheme,
  );
}
