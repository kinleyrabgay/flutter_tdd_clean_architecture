import 'package:tdd_clean_architecture_sample/core/types/typedef.dart';
import 'package:tdd_clean_architecture_sample/features/authentication/domain/entity/user_entity.dart';

abstract class AuthenticationRepository {
  const AuthenticationRepository();

  ResultFuture<UserEntity> login({
    required String email,
    required String password,
  });
}
