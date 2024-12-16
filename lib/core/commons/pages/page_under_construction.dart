import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tdd_clean_architecture_sample/core/constants/images.dart';

class PageUnderConstruction extends StatelessWidget {
  const PageUnderConstruction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: Lottie.asset(
            BImages.pageUnderConstruction,
          ),
        ),
      ),
    );
  }
}
