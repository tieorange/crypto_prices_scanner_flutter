import 'package:crypto_prices/presentation/common/widgets/app_bar.dart';
import 'package:crypto_prices/presentation/common/widgets/app_scaffold.dart';
import 'package:crypto_prices/presentation/home/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeCubit>(
      create: (_) => HomeCubit(),
      child: const HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBarBuilder.buildAppBar(
        'Home',
        context,
      ),
      body: Text('Home'),
    );
  }
}
