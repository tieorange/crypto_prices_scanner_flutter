import 'package:crypto_prices/data/model/currency_quota_dto.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'currency_quota_rest_gateway.g.dart';

@RestApi(baseUrl: 'https://api.nomics.com/v1/')
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('/currencies/ticker')
  Future<List<CurrencyQuotaDto>> getCurrenciesTicker(
    @Query('key') String apiKey,
    @Query('ids') String currenciesIds,
    @Query('interval') String priceInterval,
    @Query('convert') String currencyConvertTo,
  );
}
