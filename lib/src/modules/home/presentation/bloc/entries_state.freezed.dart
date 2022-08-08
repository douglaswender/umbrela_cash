// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'entries_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EntriesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Movimentation> movimentaions) regular,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Movimentation> movimentaions)? regular,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Movimentation> movimentaions)? regular,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EntriesStateRegular value) regular,
    required TResult Function(EntriesStateLoading value) loading,
    required TResult Function(EntriesStateEmpty value) empty,
    required TResult Function(EntriesStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EntriesStateRegular value)? regular,
    TResult Function(EntriesStateLoading value)? loading,
    TResult Function(EntriesStateEmpty value)? empty,
    TResult Function(EntriesStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EntriesStateRegular value)? regular,
    TResult Function(EntriesStateLoading value)? loading,
    TResult Function(EntriesStateEmpty value)? empty,
    TResult Function(EntriesStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntriesStateCopyWith<$Res> {
  factory $EntriesStateCopyWith(
          EntriesState value, $Res Function(EntriesState) then) =
      _$EntriesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EntriesStateCopyWithImpl<$Res> implements $EntriesStateCopyWith<$Res> {
  _$EntriesStateCopyWithImpl(this._value, this._then);

  final EntriesState _value;
  // ignore: unused_field
  final $Res Function(EntriesState) _then;
}

/// @nodoc
abstract class _$$EntriesStateRegularCopyWith<$Res> {
  factory _$$EntriesStateRegularCopyWith(_$EntriesStateRegular value,
          $Res Function(_$EntriesStateRegular) then) =
      __$$EntriesStateRegularCopyWithImpl<$Res>;
  $Res call({List<Movimentation> movimentaions});
}

/// @nodoc
class __$$EntriesStateRegularCopyWithImpl<$Res>
    extends _$EntriesStateCopyWithImpl<$Res>
    implements _$$EntriesStateRegularCopyWith<$Res> {
  __$$EntriesStateRegularCopyWithImpl(
      _$EntriesStateRegular _value, $Res Function(_$EntriesStateRegular) _then)
      : super(_value, (v) => _then(v as _$EntriesStateRegular));

  @override
  _$EntriesStateRegular get _value => super._value as _$EntriesStateRegular;

  @override
  $Res call({
    Object? movimentaions = freezed,
  }) {
    return _then(_$EntriesStateRegular(
      movimentaions: movimentaions == freezed
          ? _value._movimentaions
          : movimentaions // ignore: cast_nullable_to_non_nullable
              as List<Movimentation>,
    ));
  }
}

/// @nodoc

class _$EntriesStateRegular implements EntriesStateRegular {
  const _$EntriesStateRegular(
      {required final List<Movimentation> movimentaions})
      : _movimentaions = movimentaions;

  final List<Movimentation> _movimentaions;
  @override
  List<Movimentation> get movimentaions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movimentaions);
  }

  @override
  String toString() {
    return 'EntriesState.regular(movimentaions: $movimentaions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EntriesStateRegular &&
            const DeepCollectionEquality()
                .equals(other._movimentaions, _movimentaions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_movimentaions));

  @JsonKey(ignore: true)
  @override
  _$$EntriesStateRegularCopyWith<_$EntriesStateRegular> get copyWith =>
      __$$EntriesStateRegularCopyWithImpl<_$EntriesStateRegular>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Movimentation> movimentaions) regular,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(Failure failure) error,
  }) {
    return regular(movimentaions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Movimentation> movimentaions)? regular,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(Failure failure)? error,
  }) {
    return regular?.call(movimentaions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Movimentation> movimentaions)? regular,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (regular != null) {
      return regular(movimentaions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EntriesStateRegular value) regular,
    required TResult Function(EntriesStateLoading value) loading,
    required TResult Function(EntriesStateEmpty value) empty,
    required TResult Function(EntriesStateError value) error,
  }) {
    return regular(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EntriesStateRegular value)? regular,
    TResult Function(EntriesStateLoading value)? loading,
    TResult Function(EntriesStateEmpty value)? empty,
    TResult Function(EntriesStateError value)? error,
  }) {
    return regular?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EntriesStateRegular value)? regular,
    TResult Function(EntriesStateLoading value)? loading,
    TResult Function(EntriesStateEmpty value)? empty,
    TResult Function(EntriesStateError value)? error,
    required TResult orElse(),
  }) {
    if (regular != null) {
      return regular(this);
    }
    return orElse();
  }
}

abstract class EntriesStateRegular implements EntriesState {
  const factory EntriesStateRegular(
          {required final List<Movimentation> movimentaions}) =
      _$EntriesStateRegular;

  List<Movimentation> get movimentaions;
  @JsonKey(ignore: true)
  _$$EntriesStateRegularCopyWith<_$EntriesStateRegular> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EntriesStateLoadingCopyWith<$Res> {
  factory _$$EntriesStateLoadingCopyWith(_$EntriesStateLoading value,
          $Res Function(_$EntriesStateLoading) then) =
      __$$EntriesStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EntriesStateLoadingCopyWithImpl<$Res>
    extends _$EntriesStateCopyWithImpl<$Res>
    implements _$$EntriesStateLoadingCopyWith<$Res> {
  __$$EntriesStateLoadingCopyWithImpl(
      _$EntriesStateLoading _value, $Res Function(_$EntriesStateLoading) _then)
      : super(_value, (v) => _then(v as _$EntriesStateLoading));

  @override
  _$EntriesStateLoading get _value => super._value as _$EntriesStateLoading;
}

/// @nodoc

class _$EntriesStateLoading implements EntriesStateLoading {
  const _$EntriesStateLoading();

  @override
  String toString() {
    return 'EntriesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EntriesStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Movimentation> movimentaions) regular,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(Failure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Movimentation> movimentaions)? regular,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(Failure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Movimentation> movimentaions)? regular,
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
    required TResult Function(EntriesStateRegular value) regular,
    required TResult Function(EntriesStateLoading value) loading,
    required TResult Function(EntriesStateEmpty value) empty,
    required TResult Function(EntriesStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EntriesStateRegular value)? regular,
    TResult Function(EntriesStateLoading value)? loading,
    TResult Function(EntriesStateEmpty value)? empty,
    TResult Function(EntriesStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EntriesStateRegular value)? regular,
    TResult Function(EntriesStateLoading value)? loading,
    TResult Function(EntriesStateEmpty value)? empty,
    TResult Function(EntriesStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class EntriesStateLoading implements EntriesState {
  const factory EntriesStateLoading() = _$EntriesStateLoading;
}

/// @nodoc
abstract class _$$EntriesStateEmptyCopyWith<$Res> {
  factory _$$EntriesStateEmptyCopyWith(
          _$EntriesStateEmpty value, $Res Function(_$EntriesStateEmpty) then) =
      __$$EntriesStateEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EntriesStateEmptyCopyWithImpl<$Res>
    extends _$EntriesStateCopyWithImpl<$Res>
    implements _$$EntriesStateEmptyCopyWith<$Res> {
  __$$EntriesStateEmptyCopyWithImpl(
      _$EntriesStateEmpty _value, $Res Function(_$EntriesStateEmpty) _then)
      : super(_value, (v) => _then(v as _$EntriesStateEmpty));

  @override
  _$EntriesStateEmpty get _value => super._value as _$EntriesStateEmpty;
}

/// @nodoc

class _$EntriesStateEmpty implements EntriesStateEmpty {
  const _$EntriesStateEmpty();

  @override
  String toString() {
    return 'EntriesState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EntriesStateEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Movimentation> movimentaions) regular,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(Failure failure) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Movimentation> movimentaions)? regular,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(Failure failure)? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Movimentation> movimentaions)? regular,
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
    required TResult Function(EntriesStateRegular value) regular,
    required TResult Function(EntriesStateLoading value) loading,
    required TResult Function(EntriesStateEmpty value) empty,
    required TResult Function(EntriesStateError value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EntriesStateRegular value)? regular,
    TResult Function(EntriesStateLoading value)? loading,
    TResult Function(EntriesStateEmpty value)? empty,
    TResult Function(EntriesStateError value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EntriesStateRegular value)? regular,
    TResult Function(EntriesStateLoading value)? loading,
    TResult Function(EntriesStateEmpty value)? empty,
    TResult Function(EntriesStateError value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EntriesStateEmpty implements EntriesState {
  const factory EntriesStateEmpty() = _$EntriesStateEmpty;
}

/// @nodoc
abstract class _$$EntriesStateErrorCopyWith<$Res> {
  factory _$$EntriesStateErrorCopyWith(
          _$EntriesStateError value, $Res Function(_$EntriesStateError) then) =
      __$$EntriesStateErrorCopyWithImpl<$Res>;
  $Res call({Failure failure});
}

/// @nodoc
class __$$EntriesStateErrorCopyWithImpl<$Res>
    extends _$EntriesStateCopyWithImpl<$Res>
    implements _$$EntriesStateErrorCopyWith<$Res> {
  __$$EntriesStateErrorCopyWithImpl(
      _$EntriesStateError _value, $Res Function(_$EntriesStateError) _then)
      : super(_value, (v) => _then(v as _$EntriesStateError));

  @override
  _$EntriesStateError get _value => super._value as _$EntriesStateError;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$EntriesStateError(
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$EntriesStateError implements EntriesStateError {
  const _$EntriesStateError({required this.failure});

  @override
  final Failure failure;

  @override
  String toString() {
    return 'EntriesState.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EntriesStateError &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$EntriesStateErrorCopyWith<_$EntriesStateError> get copyWith =>
      __$$EntriesStateErrorCopyWithImpl<_$EntriesStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Movimentation> movimentaions) regular,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(Failure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Movimentation> movimentaions)? regular,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Movimentation> movimentaions)? regular,
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
    required TResult Function(EntriesStateRegular value) regular,
    required TResult Function(EntriesStateLoading value) loading,
    required TResult Function(EntriesStateEmpty value) empty,
    required TResult Function(EntriesStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EntriesStateRegular value)? regular,
    TResult Function(EntriesStateLoading value)? loading,
    TResult Function(EntriesStateEmpty value)? empty,
    TResult Function(EntriesStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EntriesStateRegular value)? regular,
    TResult Function(EntriesStateLoading value)? loading,
    TResult Function(EntriesStateEmpty value)? empty,
    TResult Function(EntriesStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class EntriesStateError implements EntriesState {
  const factory EntriesStateError({required final Failure failure}) =
      _$EntriesStateError;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$EntriesStateErrorCopyWith<_$EntriesStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
