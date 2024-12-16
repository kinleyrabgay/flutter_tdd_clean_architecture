import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tdd_clean_architecture_sample/core/stores/cache.dart';
import 'package:tdd_clean_architecture_sample/core/stores/token.dart';
import 'package:tdd_clean_architecture_sample/features/authentication/data/datasource/remote_datasource.dart';
import 'package:tdd_clean_architecture_sample/features/authentication/data/repository/auth_repository_impl.dart';
import 'package:tdd_clean_architecture_sample/features/authentication/domain/repository/auth_repsitory.dart';
import 'package:tdd_clean_architecture_sample/features/authentication/domain/usecase/mock_login.dart';
import 'package:tdd_clean_architecture_sample/features/authentication/presentation/bloc/authentication_bloc.dart';
import 'package:tdd_clean_architecture_sample/features/onboarding/data/datasource/local_datasource.dart';
import 'package:tdd_clean_architecture_sample/features/onboarding/data/repository/onboarding_repository_impl.dart';
import 'package:tdd_clean_architecture_sample/features/onboarding/domain/repository/onboarding_repository.dart';
import 'package:tdd_clean_architecture_sample/features/onboarding/domain/usecase/cache_first_timer.dart';
import 'package:tdd_clean_architecture_sample/features/onboarding/presentation/bloc/onboarding_bloc.dart';

part 'injection_main.dart';
