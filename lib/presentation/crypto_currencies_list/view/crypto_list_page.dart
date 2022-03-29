import 'package:crypto_prices/presentation/template_for_new_pages/cubit/template_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CryptoListPage extends StatelessWidget {
  const CryptoListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TemplateCubit>(
      create: (_) => TemplateCubit(),
      child: const CryptoListView(),
    );
  }
}

class CryptoListView extends StatelessWidget {
  const CryptoListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final list = List.generate(
      100,
      (int index) => const ListTile(
        title: Text('Bitcoin 1000k'),
        subtitle: Divider(),
      ),
    );
    return ListView(children: list);
  }
}
