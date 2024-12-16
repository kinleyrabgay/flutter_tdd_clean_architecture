import 'package:tdd_clean_architecture_sample/core/types/typedef.dart';
import 'package:tdd_clean_architecture_sample/core/usecases/usecase.dart';
import 'package:tdd_clean_architecture_sample/features/onboarding/domain/repository/onboarding_repository.dart';

class CacheUserOrDeviceFirstTimerUsecase extends UsecaseWithoutParam<void> {
  const CacheUserOrDeviceFirstTimerUsecase({
    required OnboardingRepository repo,
  }) : _repo = repo;

  final OnboardingRepository _repo;

  @override
  ResultFuture call() async => _repo.cacheFirstTimer();
}
