import 'package:crypto_prices/domain/model/currency_quota.dart';
import 'package:crypto_prices/domain/service/currency_quota_service.dart';

abstract class GetCryptoListUseCase {
  Future<List<CurrencyQuota>> call(
    String apiKey,
    String currenciesIds,
    String priceInterval,
    String currencyConvertTo,
  );
}

class GetCryptoListUseCaseRest implements GetCryptoListUseCase {
  GetCryptoListUseCaseRest(this._service);

  final CurrencyQuotaService _service;

  @override
  Future<List<CurrencyQuota>> call(
    String apiKey,
    String currenciesIds,
    String priceInterval,
    String currencyConvertTo,
  ) =>
      _service.getCurrenciesTicker(
        apiKey,
        currenciesIds,
        priceInterval,
        currencyConvertTo,
      );
}
