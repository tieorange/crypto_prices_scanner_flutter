// ignore_for_file: one_member_abstracts

import 'package:crypto_prices/domain/model/currency_quota.dart';

abstract class CurrencyQuotaService {
  Future<List<CurrencyQuota>> getCurrenciesTicker(
    String apiKey,
    String currenciesIds,
    String priceInterval,
    String currencyConvertTo,
  );
}
