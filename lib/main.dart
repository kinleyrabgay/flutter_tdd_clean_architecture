import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/route_manager.dart';
import 'package:tdd_clean_architecture_sample/core/injections/injection.dart';
import 'package:tdd_clean_architecture_sample/core/routes/route.dart';
import 'package:tdd_clean_architecture_sample/core/themes/theme.dart';
import 'package:tdd_clean_architecture_sample/features/authentication/presentation/bloc/authentication_bloc.dart';
import 'package:tdd_clean_architecture_sample/features/home/presentation/bloc/home_bloc.dart';
import 'package:tdd_clean_architecture_sample/features/onboarding/presentation/bloc/onboarding_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<OnboardingBloc>(
          create: (_) => sl<OnboardingBloc>(),
        ),
        BlocProvider<AuthenticationBloc>(
          create: (_) => sl<AuthenticationBloc>(),
        ),
        BlocProvider<HomeBloc>(
          create: (_) => sl<HomeBloc>(),
        ),
      ],
      child: GetMaterialApp(
        title: 'Flutter TDD Clean Architecture Sample',
        debugShowCheckedModeBanner: false,
        theme: BAppTheme.lightTheme,
        darkTheme: BAppTheme.darkTheme,
        themeMode: ThemeMode.system,
        onGenerateRoute: onGenerateRoute,
        builder: EasyLoading.init(),
      ),
    );
  }
}
