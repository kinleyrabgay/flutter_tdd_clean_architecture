import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:tdd_clean_architecture_sample/features/onboarding/domain/usecase/cache_first_timer.dart';

part 'onboarding_event.dart';
part 'onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc({
    required CacheUserOrDeviceFirstTimerUsecase
        cacheUserOrDeviceFirstTimerUsecase,
  })  : _cacheUserOrDeviceFirstTimerUsecase =
            cacheUserOrDeviceFirstTimerUsecase,
        super(OnboardingInitial()) {
    on<CacheUserOrDeviceFirstTimer>(_cacheUserOrDeviceFirstTimer);
  }

  final CacheUserOrDeviceFirstTimerUsecase _cacheUserOrDeviceFirstTimerUsecase;

  Future<void> _cacheUserOrDeviceFirstTimer(
    CacheUserOrDeviceFirstTimer event,
    Emitter<OnboardingState> emit,
  ) async {
    emit(CachingUserOrDeviceFirstTimer());
    final result = await _cacheUserOrDeviceFirstTimerUsecase();
    result.fold(
      (failure) =>
          emit(CachingUserOrDeviceFirstTimerFailed(message: failure.message)),
      (success) => emit(CachingUserOrDeviceFirstTimerSuccess()),
    );
  }
}
