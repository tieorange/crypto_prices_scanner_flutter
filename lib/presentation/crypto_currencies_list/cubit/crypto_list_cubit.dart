import 'package:bloc/bloc.dart';
import 'package:crypto_prices/domain/core/errors/failures.dart';
import 'package:crypto_prices/domain/model/currency_quota.dart';
import 'package:crypto_prices/domain/service/currency_quota_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'crypto_list_cubit.freezed.dart';

class CryptoListCubit extends Cubit<CryptoListState> {
  CryptoListCubit(this.currencyQuotaService)
      : super(const CryptoListState.loading()){
    loadAndEmitCryptoList();
  }

  final CurrencyQuotaService currencyQuotaService;

  Future<void> loadAndEmitCryptoList() async {
    emit(const CryptoListState.loading());

    const apiKey = '';
    const currenciesIds = '';
    const priceInterval = 'ytd';
    const currencyConvertTo = 'USD';

    final response = await currencyQuotaService.getCurrenciesTicker(
      apiKey,
      currenciesIds,
      priceInterval,
      currencyConvertTo,
    );

    emit(CryptoListState.loaded(response));
  }
}

@freezed
class CryptoListState with _$CryptoListState {
  const factory CryptoListState.loading() = LoadingCryptoList;

  const factory CryptoListState.loaded(List<CurrencyQuota> cryptoList) =
      LoadedCryptoList;

  const factory CryptoListState.error(Failure failure) = ErrorCryptoList;
}
