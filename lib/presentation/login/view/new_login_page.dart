import 'package:flutter/material.dart';
import 'package:crypto_prices/presentation/login/cubit/login_cubit.dart';
import 'package:crypto_prices/presentation/navigation/router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewLoginPage extends StatefulWidget {
  const NewLoginPage({Key? key}) : super(key: key);

  @override
  _NewLoginPageState createState() => _NewLoginPageState();
}

class _NewLoginPageState extends State<NewLoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'E-mail',
                  ),
                ),
                TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
                const SizedBox(height: 16),
                OutlinedButton.icon(
                  onPressed: _onLoginPressed,
                  icon: const Icon(Icons.login, size: 18),
                  label: const Padding(
                    padding: EdgeInsets.all(16),
                    child: Text('Login'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onLoginPressed() {
    final email = _emailController.text;
    final password = _passwordController.text;
    // Assuming LoginCubit has a login method that takes email and password.
    context.read<LoginCubit>().login(email, password);
    // Assuming the login method will handle the state and navigate upon success.
    _navigateToHome();
  }

  void _navigateToHome() {
    AppRouter.navigate(
      context: context,
      route: AppRoute.home,
      type: RouteType.pushAndCleanStack,
    );
  }
}
