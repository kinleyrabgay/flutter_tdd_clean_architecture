import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:tdd_clean_architecture_sample/core/stores/token.dart';
import 'package:tdd_clean_architecture_sample/features/authentication/data/model/user_model.dart';

abstract class AuthRemoteDataSource {
  Future<UserModel> login({
    required String email,
    required String password,
  });
}

class AuthRemoteDataSourceImplementation implements AuthRemoteDataSource {
  const AuthRemoteDataSourceImplementation({
    required Dio dio,
    required TokenStore store,
  })  : _dio = dio,
        _store = store;

  final Dio _dio;
  final TokenStore _store;

  @override
  Future<UserModel> login({
    required String email,
    required String password,
  }) async {
    // await _dio.post(
    //   ApiEndpoint.login,
    //   data: {
    //     'email': email,
    //     'password': password,
    //   },
    //   options: Options(
    //     headers: {
    //       'Content-Type': 'application/json',
    //     },
    //   ),
    // );

    // MOCKED VERSION
    _store.setToken('MOCKED_TOKEN');
    return UserModel.fromJson(json.encode({
      'name': 'MOCKED_NAME',
      'email': 'MOCKED_EMAIL',
    }));
  }
}
