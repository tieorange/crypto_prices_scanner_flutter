import 'package:crypto_prices/data/gateway/currency_quota_rest_gateway.dart';
import 'package:crypto_prices/data/service/currency_quota_rest_service.dart';
import 'package:crypto_prices/domain/service/currency_quota_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

late Logger _logger;

Logger get logger => _logger;

GetIt get = GetIt.instance;

abstract class DI {
  static void initializeDependencies() {
    _logger = Logger();

    get
      ..registerSingleton<Dio>(Dio())
      ..registerSingleton<RestClient>(RestClient(get<Dio>()))
      ..registerSingleton<CurrencyQuotaService>(
        CurrencyQuotaRestService(get<RestClient>()),
      );
  }
}
