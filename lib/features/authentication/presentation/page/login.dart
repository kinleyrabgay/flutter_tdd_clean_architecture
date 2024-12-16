import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tdd_clean_architecture_sample/core/constants/sizes.dart';
import 'package:tdd_clean_architecture_sample/core/loader/loader.dart';
import 'package:tdd_clean_architecture_sample/core/utils/toaster.dart';
import 'package:tdd_clean_architecture_sample/features/authentication/presentation/bloc/authentication_bloc.dart';
import 'package:tdd_clean_architecture_sample/features/home/presentation/page/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  static const String routeName = '/login';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Future<void> _mockLoginAndCacheUserToken() async {
    context.read<AuthenticationBloc>().add(
          const MockUserLoginEvent(
            email: 'mock@gmail.com',
            password: 'mock_password',
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LOGIN PAGE'),
        centerTitle: true,
      ),
      body: BlocListener<AuthenticationBloc, AuthenticationState>(
        listener: (context, state) {
          if (state is Authenticating) {
            BLoader.showLoading();
          }

          if (state is AuthenticationSuccess) {
            BLoader.dismissLoading();
            BToaster.successSnackBar(
              title: 'Success',
              message: 'User Logged In Successfully',
            );
            Navigator.of(context).pushReplacementNamed(HomePage.routeName);
          }

          if (state is AuthenticationFailure) {
            BLoader.dismissLoading();
            BToaster.errorSnackBar(title: 'Oh Snap!', message: state.message);
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(BSizes.p16),
          child: Column(
            children: [
              const Text(
                'Just assume there is login page here, let\'s just mock the login process and cache the user token',
              ),
              const SizedBox(height: BSizes.p16 * 4),
              TextButton(
                onPressed: () => _mockLoginAndCacheUserToken(),
                child: const Text('Let\'s Mock Login & Cache User Token'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
