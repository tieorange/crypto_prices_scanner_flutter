import 'package:crypto_prices/data/model/currency_quota_dto.dart';

class CurrencyQuota {
  CurrencyQuota(
    this.id,
    this.currency,
    this.symbol,
    this.name,
    this.logoUrl,
    this.price,
    this.priceDate,
    this.priceTimestamp,
    this.marketCap,
    this.marketCapDominance,
    this.firstCandle,
    this.firstTrade,
    this.firstOrderBook,
    this.rank,
    this.rankDelta,
    this.high,
    this.highTimestamp,
    this.priceChangesPerYear,
  );

  String id;
  String currency;
  String symbol;
  String name;
  String logoUrl;
  String price;
  String priceDate;
  String priceTimestamp;
  String marketCap;
  String marketCapDominance;
  String firstCandle;
  String firstTrade;
  String firstOrderBook;
  String rank;
  String rankDelta;
  String high;
  String highTimestamp;
  PriceChangesPerYear priceChangesPerYear;

  factory CurrencyQuota.fromDataTransferObject(CurrencyQuotaDto dto) {
    return CurrencyQuota(
      dto.id,
      dto.currency,
      dto.symbol,
      dto.name,
      dto.logoUrl,
      dto.price,
      dto.priceDate,
      dto.priceTimestamp,
      dto.marketCap,
      dto.marketCapDominance,
      dto.firstCandle,
      dto.firstTrade,
      dto.firstOrderBook,
      dto.rank,
      dto.rankDelta,
      dto.high,
      dto.highTimestamp,
      PriceChangesPerYear.fromDataTransferObject(dto.ytd),
    );
  }

  @override
  String toString() {
    return 'CurrencyQuota{name: $name, price: $price '
        'URL: $logoUrl}';
  }
}

// Price changes DTO
class PriceChangesPerYear {
  PriceChangesPerYear(
    this.volume,
    this.priceChange,
    this.priceChangePct,
  );

  String volume;
  String priceChange;
  String priceChangePct;

  factory PriceChangesPerYear.fromDataTransferObject(Ytd dto) {
    return PriceChangesPerYear(
      dto.volume,
      dto.priceChange,
      dto.priceChangePct,
    );
  }
}
