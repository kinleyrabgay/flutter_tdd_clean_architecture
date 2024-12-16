import 'package:dartz/dartz.dart';
import 'package:tdd_clean_architecture_sample/core/errors/exception.dart';
import 'package:tdd_clean_architecture_sample/core/errors/failure.dart';
import 'package:tdd_clean_architecture_sample/core/types/typedef.dart';
import 'package:tdd_clean_architecture_sample/features/authentication/data/datasource/remote_datasource.dart';
import 'package:tdd_clean_architecture_sample/features/authentication/domain/entity/user_entity.dart';
import 'package:tdd_clean_architecture_sample/features/authentication/domain/repository/auth_repsitory.dart';

class AuthenticationRepositoryImplementation
    implements AuthenticationRepository {
  const AuthenticationRepositoryImplementation({
    required this.remoteDataSource,
  });
  final AuthRemoteDataSource remoteDataSource;

  @override
  ResultFuture<UserEntity> login({
    required String email,
    required String password,
  }) async {
    try {
      final model = await remoteDataSource.login(
        email: email,
        password: password,
      );
      final entity = UserEntity(
        name: model.name,
        email: model.email,
      );
      return Right(entity);
    } on APIException catch (e) {
      return Left(APIFailure.fromException(e));
    }
  }
}
