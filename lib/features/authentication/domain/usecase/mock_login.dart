import 'package:equatable/equatable.dart';
import 'package:tdd_clean_architecture_sample/core/types/typedef.dart';
import 'package:tdd_clean_architecture_sample/core/usecases/usecase.dart';
import 'package:tdd_clean_architecture_sample/features/authentication/domain/entity/user_entity.dart';
import 'package:tdd_clean_architecture_sample/features/authentication/domain/repository/auth_repsitory.dart';

class MockLoginUsecase extends UsecaseWithParam<void, LoginParams> {
  const MockLoginUsecase({
    required AuthenticationRepository repo,
  }) : _repo = repo;

  final AuthenticationRepository _repo;

  @override
  ResultFuture<UserEntity> call(LoginParams params) => _repo.login(
        email: params.email,
        password: params.password,
      );
}

class LoginParams extends Equatable {
  const LoginParams({
    required this.email,
    required this.password,
  });

  const LoginParams.empty()
      : email = '',
        password = '';

  final String email;
  final String password;

  @override
  List<String> get props => [email, password];
}
