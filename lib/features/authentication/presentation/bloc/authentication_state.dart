part of 'authentication_bloc.dart';

@immutable
sealed class AuthenticationState extends Equatable {
  const AuthenticationState();

  @override
  List<Object> get props => [];
}

final class AuthenticationInitial extends AuthenticationState {}

class Authenticating extends AuthenticationState {}

class AuthenticationSuccess extends AuthenticationState {
  final UserEntity user;
  const AuthenticationSuccess({
    required this.user,
  });

  @override
  List<Object> get props => [user];
}

class AuthenticationFailure extends AuthenticationState {
  final String message;
  const AuthenticationFailure({
    required this.message,
  });

  @override
  List<Object> get props => [message];
}
