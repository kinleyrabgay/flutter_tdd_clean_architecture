import 'package:tdd_clean_architecture_sample/core/types/typedef.dart';

abstract class OnboardingRepository {
  const OnboardingRepository();

  ResultFuture<void> cacheFirstTimer();
  ResultFuture<bool> checkIfUserIsFirstTimer();
}
