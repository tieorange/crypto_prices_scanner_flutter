import 'package:crypto_prices/l10n/l10n.dart';
import 'package:crypto_prices/presentation/login/cubit/login_cubit.dart';
import 'package:crypto_prices/presentation/navigation/router.dart';
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
    return const Scaffold(
      body: Center(
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
      onPressed: () => onTapLogin(context),
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
        HeroAppTitle(theme: theme),
        login,
        password,
        const SizedBox(height: 16),
        loginButton,
      ],
    );
  }

  void onTapLogin(BuildContext context) {
    AppRouter.navigate(
      context: context,
      route: AppRoute.home,
      type: RouteType.pushAndCleanStack,
    );
    // Respond to button press
  }
}

class HeroAppTitle extends StatelessWidget {
  const HeroAppTitle({
    Key? key,
    required this.theme,
  }) : super(key: key);

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'AppBarTitle',
      child: Text(
        'Crypto scanner',
        style: theme.textTheme.headline5?.copyWith(color: Colors.black54),
      ),
    );
  }
}
