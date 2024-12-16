import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tdd_clean_architecture_sample/core/constants/sizes.dart';
import 'package:tdd_clean_architecture_sample/core/loader/loader.dart';
import 'package:tdd_clean_architecture_sample/core/utils/toaster.dart';
import 'package:tdd_clean_architecture_sample/features/authentication/presentation/page/login.dart';
import 'package:tdd_clean_architecture_sample/features/onboarding/presentation/bloc/onboarding_bloc.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  static const routeName = '/onboarding';

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  // Mock
  Future<void> _mockOnboardAndCacheUserOrDeviceFirstTimer() async {
    context.read<OnboardingBloc>().add(const CacheUserOrDeviceFirstTimer());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ONBOARDING PAGE'),
        centerTitle: true,
      ),
      body: BlocListener<OnboardingBloc, OnboardingState>(
        listener: (context, state) {
          if (state is CachingUserOrDeviceFirstTimer) {
            BLoader.showLoading();
          }
          if (state is CachingUserOrDeviceFirstTimerSuccess) {
            BLoader.dismissLoading();
            BToaster.successSnackBar(
              title: 'Success',
              message: '[USER / DEVICE] Cached Successfully',
            );
            Navigator.of(context).pushReplacementNamed(LoginPage.routeName);
          }
          if (state is CachingUserOrDeviceFirstTimerFailed) {
            BLoader.dismissLoading();
            BToaster.errorSnackBar(title: 'Oh Snap!', message: state.message);
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(BSizes.p16),
          child: Column(
            children: [
              const Text(
                'Just assume there is onboarding page here, let\'s just cache the user for [DEVICE/USER] first timer',
              ),
              const SizedBox(height: BSizes.p16 * 4),
              TextButton(
                onPressed: () => _mockOnboardAndCacheUserOrDeviceFirstTimer(),
                child: const Text(
                  'Let\'s Mock Cache [DEVICE/USER] first timer',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
