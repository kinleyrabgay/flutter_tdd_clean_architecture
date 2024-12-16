part of 'onboarding_bloc.dart';

@immutable
sealed class OnboardingState extends Equatable {
  const OnboardingState();

  @override
  List<Object> get props => [];
}

final class OnboardingInitial extends OnboardingState {}

class CachingUserOrDeviceFirstTimer extends OnboardingState {}

class CachingUserOrDeviceFirstTimerSuccess extends OnboardingState {}

class CachingUserOrDeviceFirstTimerFailed extends OnboardingState {
  final String message;

  const CachingUserOrDeviceFirstTimerFailed({required this.message});

  @override
  List<Object> get props => [message];
}
