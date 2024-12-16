import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:tdd_clean_architecture_sample/features/authentication/domain/entity/user_entity.dart';
import 'package:tdd_clean_architecture_sample/features/authentication/domain/usecase/mock_login.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc({
    required MockLoginUsecase mockLoginUsecase,
  })  : _mockLoginUsecase = mockLoginUsecase,
        super(AuthenticationInitial()) {
    on<MockUserLoginEvent>(_handleMockUserLogin);
  }

  final MockLoginUsecase _mockLoginUsecase;

  Future<void> _handleMockUserLogin(
    MockUserLoginEvent event,
    Emitter<AuthenticationState> emit,
  ) async {
    emit(Authenticating());
    final result = await _mockLoginUsecase(
      LoginParams(email: event.email, password: event.password),
    );
    result.fold(
      (failure) => emit(AuthenticationFailure(message: failure.message)),
      (user) => emit(AuthenticationSuccess(user: user)),
    );
  }
}
