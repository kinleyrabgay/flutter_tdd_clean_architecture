import 'package:dartz/dartz.dart';
import 'package:tdd_clean_architecture_sample/core/errors/exception.dart';
import 'package:tdd_clean_architecture_sample/core/errors/failure.dart';
import 'package:tdd_clean_architecture_sample/core/types/typedef.dart';
import 'package:tdd_clean_architecture_sample/features/onboarding/data/datasource/local_datasource.dart';
import 'package:tdd_clean_architecture_sample/features/onboarding/domain/repository/onboarding_repository.dart';

class OnboardingRepoImplementation extends OnboardingRepository {
  const OnboardingRepoImplementation({
    required OnboardingLocalDatasource localDataSource,
  }) : _localDataSource = localDataSource;

  final OnboardingLocalDatasource _localDataSource;

  @override
  ResultFuture<void> cacheFirstTimer() async {
    try {
      await _localDataSource.cacheFirstTimer();
      return const Right(null);
    } on CacheException catch (e) {
      return Left(
        CacheFailure(message: e.message, statusCode: e.statusCode),
      );
    }
  }

  @override
  ResultFuture<bool> checkIfUserIsFirstTimer() async {
    try {
      final result = await _localDataSource.checkIfUserIsFirstTimer();
      return Right(result);
    } on CacheException catch (e) {
      return Left(
        CacheFailure(message: e.message, statusCode: e.statusCode),
      );
    }
  }
}
