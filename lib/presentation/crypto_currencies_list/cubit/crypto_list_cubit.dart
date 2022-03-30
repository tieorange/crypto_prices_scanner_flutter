import 'package:bloc/bloc.dart';
import 'package:crypto_prices/domain/core/errors/failures.dart';
import 'package:crypto_prices/domain/model/currency_quota.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'crypto_list_cubit.freezed.dart';

class CryptoListCubit extends Cubit<CryptoListState> {
  CryptoListCubit() : super(const CryptoListState.loading());
}

@freezed
class CryptoListState with _$CryptoListState {
  const factory CryptoListState.loading() = _Loading;

  const factory CryptoListState.loaded(List<CurrencyQuota> cryptoList) =
      _Loaded;

  const factory CryptoListState.error(Failure failure) = _Error;
}
