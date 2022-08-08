// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cash_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CashEvent {
  String get cashId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cashId) setup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String cashId)? setup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cashId)? setup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CashEventSetup value) setup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CashEventSetup value)? setup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CashEventSetup value)? setup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CashEventCopyWith<CashEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CashEventCopyWith<$Res> {
  factory $CashEventCopyWith(CashEvent value, $Res Function(CashEvent) then) =
      _$CashEventCopyWithImpl<$Res>;
  $Res call({String cashId});
}

/// @nodoc
class _$CashEventCopyWithImpl<$Res> implements $CashEventCopyWith<$Res> {
  _$CashEventCopyWithImpl(this._value, this._then);

  final CashEvent _value;
  // ignore: unused_field
  final $Res Function(CashEvent) _then;

  @override
  $Res call({
    Object? cashId = freezed,
  }) {
    return _then(_value.copyWith(
      cashId: cashId == freezed
          ? _value.cashId
          : cashId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$CashEventSetupCopyWith<$Res>
    implements $CashEventCopyWith<$Res> {
  factory _$$CashEventSetupCopyWith(
          _$CashEventSetup value, $Res Function(_$CashEventSetup) then) =
      __$$CashEventSetupCopyWithImpl<$Res>;
  @override
  $Res call({String cashId});
}

/// @nodoc
class __$$CashEventSetupCopyWithImpl<$Res> extends _$CashEventCopyWithImpl<$Res>
    implements _$$CashEventSetupCopyWith<$Res> {
  __$$CashEventSetupCopyWithImpl(
      _$CashEventSetup _value, $Res Function(_$CashEventSetup) _then)
      : super(_value, (v) => _then(v as _$CashEventSetup));

  @override
  _$CashEventSetup get _value => super._value as _$CashEventSetup;

  @override
  $Res call({
    Object? cashId = freezed,
  }) {
    return _then(_$CashEventSetup(
      cashId: cashId == freezed
          ? _value.cashId
          : cashId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CashEventSetup implements CashEventSetup {
  const _$CashEventSetup({required this.cashId});

  @override
  final String cashId;

  @override
  String toString() {
    return 'CashEvent.setup(cashId: $cashId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CashEventSetup &&
            const DeepCollectionEquality().equals(other.cashId, cashId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(cashId));

  @JsonKey(ignore: true)
  @override
  _$$CashEventSetupCopyWith<_$CashEventSetup> get copyWith =>
      __$$CashEventSetupCopyWithImpl<_$CashEventSetup>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cashId) setup,
  }) {
    return setup(cashId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String cashId)? setup,
  }) {
    return setup?.call(cashId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cashId)? setup,
    required TResult orElse(),
  }) {
    if (setup != null) {
      return setup(cashId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CashEventSetup value) setup,
  }) {
    return setup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CashEventSetup value)? setup,
  }) {
    return setup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CashEventSetup value)? setup,
    required TResult orElse(),
  }) {
    if (setup != null) {
      return setup(this);
    }
    return orElse();
  }
}

abstract class CashEventSetup implements CashEvent {
  const factory CashEventSetup({required final String cashId}) =
      _$CashEventSetup;

  @override
  String get cashId;
  @override
  @JsonKey(ignore: true)
  _$$CashEventSetupCopyWith<_$CashEventSetup> get copyWith =>
      throw _privateConstructorUsedError;
}
