import 'package:crypto_prices/data/gateway/currency_quota_rest_gateway.dart';
import 'package:crypto_prices/domain/model/currency_quota.dart';
import 'package:crypto_prices/domain/service/currency_quota_service.dart';

class CurrencyQuotaRestService extends CurrencyQuotaService {
  CurrencyQuotaRestService(this._client);

  final RestClient _client;

  @override
  Future<List<CurrencyQuota>> getCurrenciesTicker(
    String apiKey,
    String currenciesIds,
    String priceInterval,
    String currencyConvertTo,
  ) async {
    final responseList = await _client.getCurrenciesTicker(
      apiKey,
      currenciesIds,
      priceInterval,
      currencyConvertTo,
    );

    return responseList.map(CurrencyQuota.fromDataTransferObject).toList();
  }
}
