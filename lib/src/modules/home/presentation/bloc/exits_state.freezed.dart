// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'exits_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExitsState {
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
    required TResult Function(ExitsStateRegular value) regular,
    required TResult Function(ExitsStateLoading value) loading,
    required TResult Function(ExitsStateEmpty value) empty,
    required TResult Function(ExitsStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExitsStateRegular value)? regular,
    TResult Function(ExitsStateLoading value)? loading,
    TResult Function(ExitsStateEmpty value)? empty,
    TResult Function(ExitsStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExitsStateRegular value)? regular,
    TResult Function(ExitsStateLoading value)? loading,
    TResult Function(ExitsStateEmpty value)? empty,
    TResult Function(ExitsStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExitsStateCopyWith<$Res> {
  factory $ExitsStateCopyWith(
          ExitsState value, $Res Function(ExitsState) then) =
      _$ExitsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ExitsStateCopyWithImpl<$Res> implements $ExitsStateCopyWith<$Res> {
  _$ExitsStateCopyWithImpl(this._value, this._then);

  final ExitsState _value;
  // ignore: unused_field
  final $Res Function(ExitsState) _then;
}

/// @nodoc
abstract class _$$ExitsStateRegularCopyWith<$Res> {
  factory _$$ExitsStateRegularCopyWith(
          _$ExitsStateRegular value, $Res Function(_$ExitsStateRegular) then) =
      __$$ExitsStateRegularCopyWithImpl<$Res>;
  $Res call({List<Movimentation> movimentaions});
}

/// @nodoc
class __$$ExitsStateRegularCopyWithImpl<$Res>
    extends _$ExitsStateCopyWithImpl<$Res>
    implements _$$ExitsStateRegularCopyWith<$Res> {
  __$$ExitsStateRegularCopyWithImpl(
      _$ExitsStateRegular _value, $Res Function(_$ExitsStateRegular) _then)
      : super(_value, (v) => _then(v as _$ExitsStateRegular));

  @override
  _$ExitsStateRegular get _value => super._value as _$ExitsStateRegular;

  @override
  $Res call({
    Object? movimentaions = freezed,
  }) {
    return _then(_$ExitsStateRegular(
      movimentaions: movimentaions == freezed
          ? _value._movimentaions
          : movimentaions // ignore: cast_nullable_to_non_nullable
              as List<Movimentation>,
    ));
  }
}

/// @nodoc

class _$ExitsStateRegular implements ExitsStateRegular {
  const _$ExitsStateRegular({required final List<Movimentation> movimentaions})
      : _movimentaions = movimentaions;

  final List<Movimentation> _movimentaions;
  @override
  List<Movimentation> get movimentaions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movimentaions);
  }

  @override
  String toString() {
    return 'ExitsState.regular(movimentaions: $movimentaions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExitsStateRegular &&
            const DeepCollectionEquality()
                .equals(other._movimentaions, _movimentaions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_movimentaions));

  @JsonKey(ignore: true)
  @override
  _$$ExitsStateRegularCopyWith<_$ExitsStateRegular> get copyWith =>
      __$$ExitsStateRegularCopyWithImpl<_$ExitsStateRegular>(this, _$identity);

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
    required TResult Function(ExitsStateRegular value) regular,
    required TResult Function(ExitsStateLoading value) loading,
    required TResult Function(ExitsStateEmpty value) empty,
    required TResult Function(ExitsStateError value) error,
  }) {
    return regular(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExitsStateRegular value)? regular,
    TResult Function(ExitsStateLoading value)? loading,
    TResult Function(ExitsStateEmpty value)? empty,
    TResult Function(ExitsStateError value)? error,
  }) {
    return regular?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExitsStateRegular value)? regular,
    TResult Function(ExitsStateLoading value)? loading,
    TResult Function(ExitsStateEmpty value)? empty,
    TResult Function(ExitsStateError value)? error,
    required TResult orElse(),
  }) {
    if (regular != null) {
      return regular(this);
    }
    return orElse();
  }
}

abstract class ExitsStateRegular implements ExitsState {
  const factory ExitsStateRegular(
      {required final List<Movimentation> movimentaions}) = _$ExitsStateRegular;

  List<Movimentation> get movimentaions;
  @JsonKey(ignore: true)
  _$$ExitsStateRegularCopyWith<_$ExitsStateRegular> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExitsStateLoadingCopyWith<$Res> {
  factory _$$ExitsStateLoadingCopyWith(
          _$ExitsStateLoading value, $Res Function(_$ExitsStateLoading) then) =
      __$$ExitsStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ExitsStateLoadingCopyWithImpl<$Res>
    extends _$ExitsStateCopyWithImpl<$Res>
    implements _$$ExitsStateLoadingCopyWith<$Res> {
  __$$ExitsStateLoadingCopyWithImpl(
      _$ExitsStateLoading _value, $Res Function(_$ExitsStateLoading) _then)
      : super(_value, (v) => _then(v as _$ExitsStateLoading));

  @override
  _$ExitsStateLoading get _value => super._value as _$ExitsStateLoading;
}

/// @nodoc

class _$ExitsStateLoading implements ExitsStateLoading {
  const _$ExitsStateLoading();

  @override
  String toString() {
    return 'ExitsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ExitsStateLoading);
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
    required TResult Function(ExitsStateRegular value) regular,
    required TResult Function(ExitsStateLoading value) loading,
    required TResult Function(ExitsStateEmpty value) empty,
    required TResult Function(ExitsStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExitsStateRegular value)? regular,
    TResult Function(ExitsStateLoading value)? loading,
    TResult Function(ExitsStateEmpty value)? empty,
    TResult Function(ExitsStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExitsStateRegular value)? regular,
    TResult Function(ExitsStateLoading value)? loading,
    TResult Function(ExitsStateEmpty value)? empty,
    TResult Function(ExitsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ExitsStateLoading implements ExitsState {
  const factory ExitsStateLoading() = _$ExitsStateLoading;
}

/// @nodoc
abstract class _$$ExitsStateEmptyCopyWith<$Res> {
  factory _$$ExitsStateEmptyCopyWith(
          _$ExitsStateEmpty value, $Res Function(_$ExitsStateEmpty) then) =
      __$$ExitsStateEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ExitsStateEmptyCopyWithImpl<$Res>
    extends _$ExitsStateCopyWithImpl<$Res>
    implements _$$ExitsStateEmptyCopyWith<$Res> {
  __$$ExitsStateEmptyCopyWithImpl(
      _$ExitsStateEmpty _value, $Res Function(_$ExitsStateEmpty) _then)
      : super(_value, (v) => _then(v as _$ExitsStateEmpty));

  @override
  _$ExitsStateEmpty get _value => super._value as _$ExitsStateEmpty;
}

/// @nodoc

class _$ExitsStateEmpty implements ExitsStateEmpty {
  const _$ExitsStateEmpty();

  @override
  String toString() {
    return 'ExitsState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ExitsStateEmpty);
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
    required TResult Function(ExitsStateRegular value) regular,
    required TResult Function(ExitsStateLoading value) loading,
    required TResult Function(ExitsStateEmpty value) empty,
    required TResult Function(ExitsStateError value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExitsStateRegular value)? regular,
    TResult Function(ExitsStateLoading value)? loading,
    TResult Function(ExitsStateEmpty value)? empty,
    TResult Function(ExitsStateError value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExitsStateRegular value)? regular,
    TResult Function(ExitsStateLoading value)? loading,
    TResult Function(ExitsStateEmpty value)? empty,
    TResult Function(ExitsStateError value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class ExitsStateEmpty implements ExitsState {
  const factory ExitsStateEmpty() = _$ExitsStateEmpty;
}

/// @nodoc
abstract class _$$ExitsStateErrorCopyWith<$Res> {
  factory _$$ExitsStateErrorCopyWith(
          _$ExitsStateError value, $Res Function(_$ExitsStateError) then) =
      __$$ExitsStateErrorCopyWithImpl<$Res>;
  $Res call({Failure failure});
}

/// @nodoc
class __$$ExitsStateErrorCopyWithImpl<$Res>
    extends _$ExitsStateCopyWithImpl<$Res>
    implements _$$ExitsStateErrorCopyWith<$Res> {
  __$$ExitsStateErrorCopyWithImpl(
      _$ExitsStateError _value, $Res Function(_$ExitsStateError) _then)
      : super(_value, (v) => _then(v as _$ExitsStateError));

  @override
  _$ExitsStateError get _value => super._value as _$ExitsStateError;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$ExitsStateError(
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$ExitsStateError implements ExitsStateError {
  const _$ExitsStateError({required this.failure});

  @override
  final Failure failure;

  @override
  String toString() {
    return 'ExitsState.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExitsStateError &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$ExitsStateErrorCopyWith<_$ExitsStateError> get copyWith =>
      __$$ExitsStateErrorCopyWithImpl<_$ExitsStateError>(this, _$identity);

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
    required TResult Function(ExitsStateRegular value) regular,
    required TResult Function(ExitsStateLoading value) loading,
    required TResult Function(ExitsStateEmpty value) empty,
    required TResult Function(ExitsStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExitsStateRegular value)? regular,
    TResult Function(ExitsStateLoading value)? loading,
    TResult Function(ExitsStateEmpty value)? empty,
    TResult Function(ExitsStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExitsStateRegular value)? regular,
    TResult Function(ExitsStateLoading value)? loading,
    TResult Function(ExitsStateEmpty value)? empty,
    TResult Function(ExitsStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ExitsStateError implements ExitsState {
  const factory ExitsStateError({required final Failure failure}) =
      _$ExitsStateError;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$ExitsStateErrorCopyWith<_$ExitsStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
