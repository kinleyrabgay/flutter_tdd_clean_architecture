part of 'injection.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  await initUtils();
  await initStorage();
  await initOnboarding();
  await initAuthentication();
}

Future<void> initUtils() async {
  final SharedPreferences pref = await SharedPreferences.getInstance();
  sl
    ..registerLazySingleton<Dio>(
      () => Dio(),
    )
    ..registerLazySingleton(
      () => pref,
    );
}

Future<void> initStorage() async {
  sl
    ..registerLazySingleton<TokenStore>(
      () => TokenStore(sharedPreferences: sl()),
    )
    ..registerLazySingleton(
      () => CacheStore(sharedPreferences: sl()),
    );
}

Future<void> initOnboarding() async {
  sl
    ..registerFactory(
      () => OnboardingBloc(
        cacheUserOrDeviceFirstTimerUsecase: sl(),
      ),
    )
    ..registerLazySingleton<CacheUserOrDeviceFirstTimerUsecase>(
      () => CacheUserOrDeviceFirstTimerUsecase(
        repo: sl(),
      ),
    )
    ..registerLazySingleton<OnboardingRepository>(
      () => OnboardingRepoImplementation(
        localDataSource: sl(),
      ),
    )
    ..registerLazySingleton<OnboardingLocalDatasource>(
      () => OnboardingLocalDatasourceImplementation(
        prefs: sl(),
      ),
    );
}

Future<void> initAuthentication() async {
  sl
    ..registerFactory(
      () => AuthenticationBloc(
        mockLoginUsecase: sl(),
      ),
    )
    ..registerLazySingleton<MockLoginUsecase>(
      () => MockLoginUsecase(
        repo: sl(),
      ),
    )
    ..registerLazySingleton<AuthenticationRepository>(
      () => AuthenticationRepositoryImplementation(
        remoteDataSource: sl(),
      ),
    )
    ..registerLazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImplementation(
        dio: sl(),
        store: sl(),
      ),
    );
}
