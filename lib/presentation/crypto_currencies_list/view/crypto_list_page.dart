import 'package:crypto_prices/domain/dependency_injection/di.dart';
import 'package:crypto_prices/domain/service/currency_quota_service.dart';
import 'package:crypto_prices/presentation/crypto_currencies_list/cubit/crypto_list_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CryptoListPage extends StatelessWidget {
  const CryptoListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CryptoListCubit>(
      create: (_) => CryptoListCubit(get<CurrencyQuotaService>()),
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
    return BlocBuilder<CryptoListCubit, CryptoListState>(
      builder: (context, CryptoListState state) {
        return RefreshIndicator(
          onRefresh: () async =>
              context.read<CryptoListCubit>().loadAndEmitCryptoList(),
          child: state.map(
            loading: (_) => _initialWidget(),
            error: (ErrorCryptoList failure) => errorWidget(),
            loaded: (LoadedCryptoList stateValue) {
              return buildListView(list, stateValue);
            },
          ),
          // child: buildListView(list),
        );
      },
    );
  }

  ListView buildListView(List<ListTile> list, LoadedCryptoList stateValue) {
    // final cryptoList = state.cryptoList;
    logger.d(stateValue.cryptoList);
    return ListView(children: list);
  }

  Widget _initialWidget() => const Center(child: SizedBox());

  Widget errorWidget() => const Center(child: Text('Error'));
}
