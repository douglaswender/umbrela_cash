// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cash_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CashState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Cash cash) regular,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Cash cash)? regular,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Cash cash)? regular,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CashStateRegular value) regular,
    required TResult Function(CashStateLoading value) loading,
    required TResult Function(CashStateEmpty value) empty,
    required TResult Function(CashStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CashStateRegular value)? regular,
    TResult Function(CashStateLoading value)? loading,
    TResult Function(CashStateEmpty value)? empty,
    TResult Function(CashStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CashStateRegular value)? regular,
    TResult Function(CashStateLoading value)? loading,
    TResult Function(CashStateEmpty value)? empty,
    TResult Function(CashStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CashStateCopyWith<$Res> {
  factory $CashStateCopyWith(CashState value, $Res Function(CashState) then) =
      _$CashStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CashStateCopyWithImpl<$Res> implements $CashStateCopyWith<$Res> {
  _$CashStateCopyWithImpl(this._value, this._then);

  final CashState _value;
  // ignore: unused_field
  final $Res Function(CashState) _then;
}

/// @nodoc
abstract class _$$CashStateRegularCopyWith<$Res> {
  factory _$$CashStateRegularCopyWith(
          _$CashStateRegular value, $Res Function(_$CashStateRegular) then) =
      __$$CashStateRegularCopyWithImpl<$Res>;
  $Res call({Cash cash});
}

/// @nodoc
class __$$CashStateRegularCopyWithImpl<$Res>
    extends _$CashStateCopyWithImpl<$Res>
    implements _$$CashStateRegularCopyWith<$Res> {
  __$$CashStateRegularCopyWithImpl(
      _$CashStateRegular _value, $Res Function(_$CashStateRegular) _then)
      : super(_value, (v) => _then(v as _$CashStateRegular));

  @override
  _$CashStateRegular get _value => super._value as _$CashStateRegular;

  @override
  $Res call({
    Object? cash = freezed,
  }) {
    return _then(_$CashStateRegular(
      cash: cash == freezed
          ? _value.cash
          : cash // ignore: cast_nullable_to_non_nullable
              as Cash,
    ));
  }
}

/// @nodoc

class _$CashStateRegular implements CashStateRegular {
  const _$CashStateRegular({required this.cash});

  @override
  final Cash cash;

  @override
  String toString() {
    return 'CashState.regular(cash: $cash)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CashStateRegular &&
            const DeepCollectionEquality().equals(other.cash, cash));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(cash));

  @JsonKey(ignore: true)
  @override
  _$$CashStateRegularCopyWith<_$CashStateRegular> get copyWith =>
      __$$CashStateRegularCopyWithImpl<_$CashStateRegular>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Cash cash) regular,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(Failure failure) error,
  }) {
    return regular(cash);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Cash cash)? regular,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(Failure failure)? error,
  }) {
    return regular?.call(cash);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Cash cash)? regular,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (regular != null) {
      return regular(cash);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CashStateRegular value) regular,
    required TResult Function(CashStateLoading value) loading,
    required TResult Function(CashStateEmpty value) empty,
    required TResult Function(CashStateError value) error,
  }) {
    return regular(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CashStateRegular value)? regular,
    TResult Function(CashStateLoading value)? loading,
    TResult Function(CashStateEmpty value)? empty,
    TResult Function(CashStateError value)? error,
  }) {
    return regular?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CashStateRegular value)? regular,
    TResult Function(CashStateLoading value)? loading,
    TResult Function(CashStateEmpty value)? empty,
    TResult Function(CashStateError value)? error,
    required TResult orElse(),
  }) {
    if (regular != null) {
      return regular(this);
    }
    return orElse();
  }
}

abstract class CashStateRegular implements CashState {
  const factory CashStateRegular({required final Cash cash}) =
      _$CashStateRegular;

  Cash get cash;
  @JsonKey(ignore: true)
  _$$CashStateRegularCopyWith<_$CashStateRegular> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CashStateLoadingCopyWith<$Res> {
  factory _$$CashStateLoadingCopyWith(
          _$CashStateLoading value, $Res Function(_$CashStateLoading) then) =
      __$$CashStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CashStateLoadingCopyWithImpl<$Res>
    extends _$CashStateCopyWithImpl<$Res>
    implements _$$CashStateLoadingCopyWith<$Res> {
  __$$CashStateLoadingCopyWithImpl(
      _$CashStateLoading _value, $Res Function(_$CashStateLoading) _then)
      : super(_value, (v) => _then(v as _$CashStateLoading));

  @override
  _$CashStateLoading get _value => super._value as _$CashStateLoading;
}

/// @nodoc

class _$CashStateLoading implements CashStateLoading {
  const _$CashStateLoading();

  @override
  String toString() {
    return 'CashState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CashStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Cash cash) regular,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(Failure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Cash cash)? regular,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(Failure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Cash cash)? regular,
    TResult Function()? loading,
    TResult Function()? empty,
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
    required TResult Function(CashStateRegular value) regular,
    required TResult Function(CashStateLoading value) loading,
    required TResult Function(CashStateEmpty value) empty,
    required TResult Function(CashStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CashStateRegular value)? regular,
    TResult Function(CashStateLoading value)? loading,
    TResult Function(CashStateEmpty value)? empty,
    TResult Function(CashStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CashStateRegular value)? regular,
    TResult Function(CashStateLoading value)? loading,
    TResult Function(CashStateEmpty value)? empty,
    TResult Function(CashStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CashStateLoading implements CashState {
  const factory CashStateLoading() = _$CashStateLoading;
}

/// @nodoc
abstract class _$$CashStateEmptyCopyWith<$Res> {
  factory _$$CashStateEmptyCopyWith(
          _$CashStateEmpty value, $Res Function(_$CashStateEmpty) then) =
      __$$CashStateEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CashStateEmptyCopyWithImpl<$Res> extends _$CashStateCopyWithImpl<$Res>
    implements _$$CashStateEmptyCopyWith<$Res> {
  __$$CashStateEmptyCopyWithImpl(
      _$CashStateEmpty _value, $Res Function(_$CashStateEmpty) _then)
      : super(_value, (v) => _then(v as _$CashStateEmpty));

  @override
  _$CashStateEmpty get _value => super._value as _$CashStateEmpty;
}

/// @nodoc

class _$CashStateEmpty implements CashStateEmpty {
  const _$CashStateEmpty();

  @override
  String toString() {
    return 'CashState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CashStateEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Cash cash) regular,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(Failure failure) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Cash cash)? regular,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(Failure failure)? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Cash cash)? regular,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CashStateRegular value) regular,
    required TResult Function(CashStateLoading value) loading,
    required TResult Function(CashStateEmpty value) empty,
    required TResult Function(CashStateError value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CashStateRegular value)? regular,
    TResult Function(CashStateLoading value)? loading,
    TResult Function(CashStateEmpty value)? empty,
    TResult Function(CashStateError value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CashStateRegular value)? regular,
    TResult Function(CashStateLoading value)? loading,
    TResult Function(CashStateEmpty value)? empty,
    TResult Function(CashStateError value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class CashStateEmpty implements CashState {
  const factory CashStateEmpty() = _$CashStateEmpty;
}

/// @nodoc
abstract class _$$CashStateErrorCopyWith<$Res> {
  factory _$$CashStateErrorCopyWith(
          _$CashStateError value, $Res Function(_$CashStateError) then) =
      __$$CashStateErrorCopyWithImpl<$Res>;
  $Res call({Failure failure});
}

/// @nodoc
class __$$CashStateErrorCopyWithImpl<$Res> extends _$CashStateCopyWithImpl<$Res>
    implements _$$CashStateErrorCopyWith<$Res> {
  __$$CashStateErrorCopyWithImpl(
      _$CashStateError _value, $Res Function(_$CashStateError) _then)
      : super(_value, (v) => _then(v as _$CashStateError));

  @override
  _$CashStateError get _value => super._value as _$CashStateError;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$CashStateError(
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$CashStateError implements CashStateError {
  const _$CashStateError({required this.failure});

  @override
  final Failure failure;

  @override
  String toString() {
    return 'CashState.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CashStateError &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$CashStateErrorCopyWith<_$CashStateError> get copyWith =>
      __$$CashStateErrorCopyWithImpl<_$CashStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Cash cash) regular,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(Failure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Cash cash)? regular,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Cash cash)? regular,
    TResult Function()? loading,
    TResult Function()? empty,
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
    required TResult Function(CashStateRegular value) regular,
    required TResult Function(CashStateLoading value) loading,
    required TResult Function(CashStateEmpty value) empty,
    required TResult Function(CashStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CashStateRegular value)? regular,
    TResult Function(CashStateLoading value)? loading,
    TResult Function(CashStateEmpty value)? empty,
    TResult Function(CashStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CashStateRegular value)? regular,
    TResult Function(CashStateLoading value)? loading,
    TResult Function(CashStateEmpty value)? empty,
    TResult Function(CashStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CashStateError implements CashState {
  const factory CashStateError({required final Failure failure}) =
      _$CashStateError;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$CashStateErrorCopyWith<_$CashStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
