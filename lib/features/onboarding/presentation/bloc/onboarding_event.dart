part of 'onboarding_bloc.dart';

@immutable
sealed class OnboardingEvent extends Equatable {
  const OnboardingEvent();

  @override
  List<Object> get props => [];
}

class CacheUserOrDeviceFirstTimer extends OnboardingEvent {
  const CacheUserOrDeviceFirstTimer();
}
