// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'crypto_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CryptoListStateTearOff {
  const _$CryptoListStateTearOff();

  LoadingCryptoList loading() {
    return const LoadingCryptoList();
  }

  LoadedCryptoList loaded(List<CurrencyQuota> cryptoList) {
    return LoadedCryptoList(
      cryptoList,
    );
  }

  ErrorCryptoList error(Failure failure) {
    return ErrorCryptoList(
      failure,
    );
  }
}

/// @nodoc
const $CryptoListState = _$CryptoListStateTearOff();

/// @nodoc
mixin _$CryptoListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<CurrencyQuota> cryptoList) loaded,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<CurrencyQuota> cryptoList)? loaded,
    TResult Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<CurrencyQuota> cryptoList)? loaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingCryptoList value) loading,
    required TResult Function(LoadedCryptoList value) loaded,
    required TResult Function(ErrorCryptoList value) error,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingCryptoList value)? loading,
    TResult Function(LoadedCryptoList value)? loaded,
    TResult Function(ErrorCryptoList value)? error,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingCryptoList value)? loading,
    TResult Function(LoadedCryptoList value)? loaded,
    TResult Function(ErrorCryptoList value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptoListStateCopyWith<$Res> {
  factory $CryptoListStateCopyWith(
          CryptoListState value, $Res Function(CryptoListState) then) =
      _$CryptoListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CryptoListStateCopyWithImpl<$Res>
    implements $CryptoListStateCopyWith<$Res> {
  _$CryptoListStateCopyWithImpl(this._value, this._then);

  final CryptoListState _value;

  // ignore: unused_field
  final $Res Function(CryptoListState) _then;
}

/// @nodoc
abstract class $LoadingCryptoListCopyWith<$Res> {
  factory $LoadingCryptoListCopyWith(
          LoadingCryptoList value, $Res Function(LoadingCryptoList) then) =
      _$LoadingCryptoListCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCryptoListCopyWithImpl<$Res>
    extends _$CryptoListStateCopyWithImpl<$Res>
    implements $LoadingCryptoListCopyWith<$Res> {
  _$LoadingCryptoListCopyWithImpl(
      LoadingCryptoList _value, $Res Function(LoadingCryptoList) _then)
      : super(_value, (v) => _then(v as LoadingCryptoList));

  @override
  LoadingCryptoList get _value => super._value as LoadingCryptoList;
}

/// @nodoc

class _$LoadingCryptoList implements LoadingCryptoList {
  const _$LoadingCryptoList();

  @override
  String toString() {
    return 'CryptoListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadingCryptoList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<CurrencyQuota> cryptoList) loaded,
    required TResult Function(Failure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<CurrencyQuota> cryptoList)? loaded,
    TResult Function(Failure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<CurrencyQuota> cryptoList)? loaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingCryptoList value) loading,
    required TResult Function(LoadedCryptoList value) loaded,
    required TResult Function(ErrorCryptoList value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingCryptoList value)? loading,
    TResult Function(LoadedCryptoList value)? loaded,
    TResult Function(ErrorCryptoList value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingCryptoList value)? loading,
    TResult Function(LoadedCryptoList value)? loaded,
    TResult Function(ErrorCryptoList value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingCryptoList implements CryptoListState {
  const factory LoadingCryptoList() = _$LoadingCryptoList;
}

/// @nodoc
abstract class $LoadedCryptoListCopyWith<$Res> {
  factory $LoadedCryptoListCopyWith(
          LoadedCryptoList value, $Res Function(LoadedCryptoList) then) =
      _$LoadedCryptoListCopyWithImpl<$Res>;

  $Res call({List<CurrencyQuota> cryptoList});
}

/// @nodoc
class _$LoadedCryptoListCopyWithImpl<$Res>
    extends _$CryptoListStateCopyWithImpl<$Res>
    implements $LoadedCryptoListCopyWith<$Res> {
  _$LoadedCryptoListCopyWithImpl(
      LoadedCryptoList _value, $Res Function(LoadedCryptoList) _then)
      : super(_value, (v) => _then(v as LoadedCryptoList));

  @override
  LoadedCryptoList get _value => super._value as LoadedCryptoList;

  @override
  $Res call({
    Object? cryptoList = freezed,
  }) {
    return _then(LoadedCryptoList(
      cryptoList == freezed
          ? _value.cryptoList
          : cryptoList // ignore: cast_nullable_to_non_nullable
              as List<CurrencyQuota>,
    ));
  }
}

/// @nodoc

class _$LoadedCryptoList implements LoadedCryptoList {
  const _$LoadedCryptoList(this.cryptoList);

  @override
  final List<CurrencyQuota> cryptoList;

  @override
  String toString() {
    return 'CryptoListState.loaded(cryptoList: $cryptoList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadedCryptoList &&
            const DeepCollectionEquality()
                .equals(other.cryptoList, cryptoList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(cryptoList));

  @JsonKey(ignore: true)
  @override
  $LoadedCryptoListCopyWith<LoadedCryptoList> get copyWith =>
      _$LoadedCryptoListCopyWithImpl<LoadedCryptoList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<CurrencyQuota> cryptoList) loaded,
    required TResult Function(Failure failure) error,
  }) {
    return loaded(cryptoList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<CurrencyQuota> cryptoList)? loaded,
    TResult Function(Failure failure)? error,
  }) {
    return loaded?.call(cryptoList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<CurrencyQuota> cryptoList)? loaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(cryptoList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingCryptoList value) loading,
    required TResult Function(LoadedCryptoList value) loaded,
    required TResult Function(ErrorCryptoList value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingCryptoList value)? loading,
    TResult Function(LoadedCryptoList value)? loaded,
    TResult Function(ErrorCryptoList value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingCryptoList value)? loading,
    TResult Function(LoadedCryptoList value)? loaded,
    TResult Function(ErrorCryptoList value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedCryptoList implements CryptoListState {
  const factory LoadedCryptoList(List<CurrencyQuota> cryptoList) =
      _$LoadedCryptoList;

  List<CurrencyQuota> get cryptoList;

  @JsonKey(ignore: true)
  $LoadedCryptoListCopyWith<LoadedCryptoList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorCryptoListCopyWith<$Res> {
  factory $ErrorCryptoListCopyWith(
          ErrorCryptoList value, $Res Function(ErrorCryptoList) then) =
      _$ErrorCryptoListCopyWithImpl<$Res>;

  $Res call({Failure failure});
}

/// @nodoc
class _$ErrorCryptoListCopyWithImpl<$Res>
    extends _$CryptoListStateCopyWithImpl<$Res>
    implements $ErrorCryptoListCopyWith<$Res> {
  _$ErrorCryptoListCopyWithImpl(
      ErrorCryptoList _value, $Res Function(ErrorCryptoList) _then)
      : super(_value, (v) => _then(v as ErrorCryptoList));

  @override
  ErrorCryptoList get _value => super._value as ErrorCryptoList;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(ErrorCryptoList(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$ErrorCryptoList implements ErrorCryptoList {
  const _$ErrorCryptoList(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'CryptoListState.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ErrorCryptoList &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  $ErrorCryptoListCopyWith<ErrorCryptoList> get copyWith =>
      _$ErrorCryptoListCopyWithImpl<ErrorCryptoList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<CurrencyQuota> cryptoList) loaded,
    required TResult Function(Failure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<CurrencyQuota> cryptoList)? loaded,
    TResult Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<CurrencyQuota> cryptoList)? loaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingCryptoList value) loading,
    required TResult Function(LoadedCryptoList value) loaded,
    required TResult Function(ErrorCryptoList value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingCryptoList value)? loading,
    TResult Function(LoadedCryptoList value)? loaded,
    TResult Function(ErrorCryptoList value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingCryptoList value)? loading,
    TResult Function(LoadedCryptoList value)? loaded,
    TResult Function(ErrorCryptoList value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorCryptoList implements CryptoListState {
  const factory ErrorCryptoList(Failure failure) = _$ErrorCryptoList;

  Failure get failure;

  @JsonKey(ignore: true)
  $ErrorCryptoListCopyWith<ErrorCryptoList> get copyWith =>
      throw _privateConstructorUsedError;
}
