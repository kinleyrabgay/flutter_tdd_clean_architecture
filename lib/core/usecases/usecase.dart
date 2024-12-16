import 'package:tdd_clean_architecture_sample/core/types/typedef.dart';

abstract class UsecaseWithParam<T, Params> {
  const UsecaseWithParam();
  ResultFuture<T> call(Params params);
}

abstract class UsecaseWithoutParam<T> {
  const UsecaseWithoutParam();
  ResultFuture<T> call();
}
