import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tdd_clean_architecture_sample/core/constants/sizes.dart';
import 'package:tdd_clean_architecture_sample/core/injections/injection.dart';
import 'package:tdd_clean_architecture_sample/features/onboarding/presentation/page/onboarding.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static const routeName = '/';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Mocking: Clear the Token & User/Device First Timer
  Future<void> clearTokenAndFirstTimer() async {
    sl<SharedPreferences>().clear();

    // Navigate to OnboardingPage
    Navigator.of(context).pushReplacementNamed(OnboardingPage.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HOME PAGE'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(BSizes.p16),
        child: Column(
          children: [
            const Text(
              'Congratualtions! You have TDD Clean Architecture Sample!',
            ),
            const SizedBox(height: BSizes.p16 * 4),
            TextButton(
              onPressed: () => clearTokenAndFirstTimer(),
              child: const Text(
                'Clear Cached Token & User/Device First Timer',
              ),
            )
          ],
        ),
      ),
    );
  }
}
