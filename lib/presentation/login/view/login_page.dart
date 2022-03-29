import 'package:crypto_prices/l10n/l10n.dart';
import 'package:crypto_prices/presentation/login/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginCubit>(
      create: (_) => LoginCubit(),
      child: const SignInSignUpView(),
    );
  }
}

class SignInSignUpView extends StatelessWidget {
  const SignInSignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(title: Text(l10n.loginAppBarTitle)),
      body: const Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: SignInView(),
          ),
        ),
      ),
    );
  }
}

class SignInView extends StatelessWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final login = TextFormField(
      decoration: const InputDecoration(
        border: UnderlineInputBorder(),
        labelText: 'E-mail',
      ),
    );

    final password = TextFormField(
      obscureText: true,
      decoration: const InputDecoration(
        border: UnderlineInputBorder(),
        labelText: 'Password',
      ),
    );

    final loginButton = OutlinedButton.icon(
      onPressed: onTapLogin,
      icon: const Icon(Icons.login, size: 18),
      label: const Padding(
        padding: EdgeInsets.all(16),
        child: Text('Login'),
      ),
    );

    // final count = context.select((LoginCubit cubit) => cubit.state);
    final theme = Theme.of(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Crypto scanner', style: theme.textTheme.headline4),
        login,
        password,
        const SizedBox(height: 16),
        loginButton,
      ],
    );
  }

  void onTapLogin() {
    // Respond to button press
  }
}
