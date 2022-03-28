import 'package:crypto_prices/l10n/l10n.dart';
import 'package:crypto_prices/login/cubit/login_cubit.dart';
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
      body: const Center(child: SignInView()),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => context.read<LoginCubit>().increment(),
            child: const Icon(Icons.add),
          )
        ],
      ),
    );
  }
}

class SignInView extends StatelessWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final count = context.select((LoginCubit cubit) => cubit.state);
    return Text('Crypto scanner', style: theme.textTheme.headline4);
  }
}
