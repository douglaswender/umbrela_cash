// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'exits_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExitsEvent {
  String get cashId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cashId) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String cashId)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cashId)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExitsEventLoad value) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExitsEventLoad value)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExitsEventLoad value)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExitsEventCopyWith<ExitsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExitsEventCopyWith<$Res> {
  factory $ExitsEventCopyWith(
          ExitsEvent value, $Res Function(ExitsEvent) then) =
      _$ExitsEventCopyWithImpl<$Res>;
  $Res call({String cashId});
}

/// @nodoc
class _$ExitsEventCopyWithImpl<$Res> implements $ExitsEventCopyWith<$Res> {
  _$ExitsEventCopyWithImpl(this._value, this._then);

  final ExitsEvent _value;
  // ignore: unused_field
  final $Res Function(ExitsEvent) _then;

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
abstract class _$$ExitsEventLoadCopyWith<$Res>
    implements $ExitsEventCopyWith<$Res> {
  factory _$$ExitsEventLoadCopyWith(
          _$ExitsEventLoad value, $Res Function(_$ExitsEventLoad) then) =
      __$$ExitsEventLoadCopyWithImpl<$Res>;
  @override
  $Res call({String cashId});
}

/// @nodoc
class __$$ExitsEventLoadCopyWithImpl<$Res>
    extends _$ExitsEventCopyWithImpl<$Res>
    implements _$$ExitsEventLoadCopyWith<$Res> {
  __$$ExitsEventLoadCopyWithImpl(
      _$ExitsEventLoad _value, $Res Function(_$ExitsEventLoad) _then)
      : super(_value, (v) => _then(v as _$ExitsEventLoad));

  @override
  _$ExitsEventLoad get _value => super._value as _$ExitsEventLoad;

  @override
  $Res call({
    Object? cashId = freezed,
  }) {
    return _then(_$ExitsEventLoad(
      cashId: cashId == freezed
          ? _value.cashId
          : cashId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ExitsEventLoad implements ExitsEventLoad {
  const _$ExitsEventLoad({required this.cashId});

  @override
  final String cashId;

  @override
  String toString() {
    return 'ExitsEvent.load(cashId: $cashId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExitsEventLoad &&
            const DeepCollectionEquality().equals(other.cashId, cashId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(cashId));

  @JsonKey(ignore: true)
  @override
  _$$ExitsEventLoadCopyWith<_$ExitsEventLoad> get copyWith =>
      __$$ExitsEventLoadCopyWithImpl<_$ExitsEventLoad>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cashId) load,
  }) {
    return load(cashId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String cashId)? load,
  }) {
    return load?.call(cashId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cashId)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(cashId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExitsEventLoad value) load,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExitsEventLoad value)? load,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExitsEventLoad value)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class ExitsEventLoad implements ExitsEvent {
  const factory ExitsEventLoad({required final String cashId}) =
      _$ExitsEventLoad;

  @override
  String get cashId;
  @override
  @JsonKey(ignore: true)
  _$$ExitsEventLoadCopyWith<_$ExitsEventLoad> get copyWith =>
      throw _privateConstructorUsedError;
}
