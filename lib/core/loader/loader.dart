import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:tdd_clean_architecture_sample/core/constants/colors.dart';

class BLoader {
  BLoader._();

  static void showLoading() {
    EasyLoading.show(
      indicator: const CircularProgressIndicator(
        backgroundColor: BColors.primary,
        color: BColors.white,
      ),
      maskType: EasyLoadingMaskType.clear,
      dismissOnTap: true,
    );
  }

  static void dismissLoading() {
    EasyLoading.dismiss();
  }
}
