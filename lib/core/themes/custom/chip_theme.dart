import 'package:flutter/material.dart';
import 'package:tdd_clean_architecture_sample/core/constants/colors.dart';

class BChipTheme {
  BChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: BColors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: BColors.black),
    selectedColor: BColors.black,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
    checkmarkColor: BColors.white,
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: BColors.darkerGrey,
    labelStyle: TextStyle(color: BColors.white),
    selectedColor: BColors.black,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
    checkmarkColor: BColors.white,
  );
}
