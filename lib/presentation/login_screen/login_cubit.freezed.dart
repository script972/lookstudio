// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int value) dataUpdated,
    required TResult Function(String? message, VoidCallback retryCallback)
        unknownError,
    required TResult Function() hostUnavailableError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int value)? dataUpdated,
    TResult Function(String? message, VoidCallback retryCallback)? unknownError,
    TResult Function()? hostUnavailableError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int value)? dataUpdated,
    TResult Function(String? message, VoidCallback retryCallback)? unknownError,
    TResult Function()? hostUnavailableError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(DataUpdated value) dataUpdated,
    required TResult Function(UnknownError value) unknownError,
    required TResult Function(HostUnavailableError value) hostUnavailableError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(DataUpdated value)? dataUpdated,
    TResult Function(UnknownError value)? unknownError,
    TResult Function(HostUnavailableError value)? hostUnavailableError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(DataUpdated value)? dataUpdated,
    TResult Function(UnknownError value)? unknownError,
    TResult Function(HostUnavailableError value)? hostUnavailableError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, (v) => _then(v as _$Initial));

  @override
  _$Initial get _value => super._value as _$Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'LoginState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int value) dataUpdated,
    required TResult Function(String? message, VoidCallback retryCallback)
        unknownError,
    required TResult Function() hostUnavailableError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int value)? dataUpdated,
    TResult Function(String? message, VoidCallback retryCallback)? unknownError,
    TResult Function()? hostUnavailableError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int value)? dataUpdated,
    TResult Function(String? message, VoidCallback retryCallback)? unknownError,
    TResult Function()? hostUnavailableError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(DataUpdated value) dataUpdated,
    required TResult Function(UnknownError value) unknownError,
    required TResult Function(HostUnavailableError value) hostUnavailableError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(DataUpdated value)? dataUpdated,
    TResult Function(UnknownError value)? unknownError,
    TResult Function(HostUnavailableError value)? hostUnavailableError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(DataUpdated value)? dataUpdated,
    TResult Function(UnknownError value)? unknownError,
    TResult Function(HostUnavailableError value)? hostUnavailableError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements LoginState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, (v) => _then(v as _$Loading));

  @override
  _$Loading get _value => super._value as _$Loading;
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'LoginState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int value) dataUpdated,
    required TResult Function(String? message, VoidCallback retryCallback)
        unknownError,
    required TResult Function() hostUnavailableError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int value)? dataUpdated,
    TResult Function(String? message, VoidCallback retryCallback)? unknownError,
    TResult Function()? hostUnavailableError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int value)? dataUpdated,
    TResult Function(String? message, VoidCallback retryCallback)? unknownError,
    TResult Function()? hostUnavailableError,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(DataUpdated value) dataUpdated,
    required TResult Function(UnknownError value) unknownError,
    required TResult Function(HostUnavailableError value) hostUnavailableError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(DataUpdated value)? dataUpdated,
    TResult Function(UnknownError value)? unknownError,
    TResult Function(HostUnavailableError value)? hostUnavailableError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(DataUpdated value)? dataUpdated,
    TResult Function(UnknownError value)? unknownError,
    TResult Function(HostUnavailableError value)? hostUnavailableError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements LoginState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class _$$DataUpdatedCopyWith<$Res> {
  factory _$$DataUpdatedCopyWith(
          _$DataUpdated value, $Res Function(_$DataUpdated) then) =
      __$$DataUpdatedCopyWithImpl<$Res>;
  $Res call({int value});
}

/// @nodoc
class __$$DataUpdatedCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$$DataUpdatedCopyWith<$Res> {
  __$$DataUpdatedCopyWithImpl(
      _$DataUpdated _value, $Res Function(_$DataUpdated) _then)
      : super(_value, (v) => _then(v as _$DataUpdated));

  @override
  _$DataUpdated get _value => super._value as _$DataUpdated;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$DataUpdated(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DataUpdated implements DataUpdated {
  const _$DataUpdated(this.value);

  @override
  final int value;

  @override
  String toString() {
    return 'LoginState.dataUpdated(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataUpdated &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$DataUpdatedCopyWith<_$DataUpdated> get copyWith =>
      __$$DataUpdatedCopyWithImpl<_$DataUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int value) dataUpdated,
    required TResult Function(String? message, VoidCallback retryCallback)
        unknownError,
    required TResult Function() hostUnavailableError,
  }) {
    return dataUpdated(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int value)? dataUpdated,
    TResult Function(String? message, VoidCallback retryCallback)? unknownError,
    TResult Function()? hostUnavailableError,
  }) {
    return dataUpdated?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int value)? dataUpdated,
    TResult Function(String? message, VoidCallback retryCallback)? unknownError,
    TResult Function()? hostUnavailableError,
    required TResult orElse(),
  }) {
    if (dataUpdated != null) {
      return dataUpdated(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(DataUpdated value) dataUpdated,
    required TResult Function(UnknownError value) unknownError,
    required TResult Function(HostUnavailableError value) hostUnavailableError,
  }) {
    return dataUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(DataUpdated value)? dataUpdated,
    TResult Function(UnknownError value)? unknownError,
    TResult Function(HostUnavailableError value)? hostUnavailableError,
  }) {
    return dataUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(DataUpdated value)? dataUpdated,
    TResult Function(UnknownError value)? unknownError,
    TResult Function(HostUnavailableError value)? hostUnavailableError,
    required TResult orElse(),
  }) {
    if (dataUpdated != null) {
      return dataUpdated(this);
    }
    return orElse();
  }
}

abstract class DataUpdated implements LoginState {
  const factory DataUpdated(final int value) = _$DataUpdated;

  int get value;
  @JsonKey(ignore: true)
  _$$DataUpdatedCopyWith<_$DataUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownErrorCopyWith<$Res> {
  factory _$$UnknownErrorCopyWith(
          _$UnknownError value, $Res Function(_$UnknownError) then) =
      __$$UnknownErrorCopyWithImpl<$Res>;
  $Res call({String? message, VoidCallback retryCallback});
}

/// @nodoc
class __$$UnknownErrorCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$$UnknownErrorCopyWith<$Res> {
  __$$UnknownErrorCopyWithImpl(
      _$UnknownError _value, $Res Function(_$UnknownError) _then)
      : super(_value, (v) => _then(v as _$UnknownError));

  @override
  _$UnknownError get _value => super._value as _$UnknownError;

  @override
  $Res call({
    Object? message = freezed,
    Object? retryCallback = freezed,
  }) {
    return _then(_$UnknownError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      retryCallback: retryCallback == freezed
          ? _value.retryCallback
          : retryCallback // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }
}

/// @nodoc

class _$UnknownError implements UnknownError {
  const _$UnknownError({this.message, required this.retryCallback});

  @override
  final String? message;
  @override
  final VoidCallback retryCallback;

  @override
  String toString() {
    return 'LoginState.unknownError(message: $message, retryCallback: $retryCallback)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownError &&
            const DeepCollectionEquality().equals(other.message, message) &&
            (identical(other.retryCallback, retryCallback) ||
                other.retryCallback == retryCallback));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(message), retryCallback);

  @JsonKey(ignore: true)
  @override
  _$$UnknownErrorCopyWith<_$UnknownError> get copyWith =>
      __$$UnknownErrorCopyWithImpl<_$UnknownError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int value) dataUpdated,
    required TResult Function(String? message, VoidCallback retryCallback)
        unknownError,
    required TResult Function() hostUnavailableError,
  }) {
    return unknownError(message, retryCallback);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int value)? dataUpdated,
    TResult Function(String? message, VoidCallback retryCallback)? unknownError,
    TResult Function()? hostUnavailableError,
  }) {
    return unknownError?.call(message, retryCallback);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int value)? dataUpdated,
    TResult Function(String? message, VoidCallback retryCallback)? unknownError,
    TResult Function()? hostUnavailableError,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError(message, retryCallback);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(DataUpdated value) dataUpdated,
    required TResult Function(UnknownError value) unknownError,
    required TResult Function(HostUnavailableError value) hostUnavailableError,
  }) {
    return unknownError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(DataUpdated value)? dataUpdated,
    TResult Function(UnknownError value)? unknownError,
    TResult Function(HostUnavailableError value)? hostUnavailableError,
  }) {
    return unknownError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(DataUpdated value)? dataUpdated,
    TResult Function(UnknownError value)? unknownError,
    TResult Function(HostUnavailableError value)? hostUnavailableError,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError(this);
    }
    return orElse();
  }
}

abstract class UnknownError implements LoginState {
  const factory UnknownError(
      {final String? message,
      required final VoidCallback retryCallback}) = _$UnknownError;

  String? get message;
  VoidCallback get retryCallback;
  @JsonKey(ignore: true)
  _$$UnknownErrorCopyWith<_$UnknownError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HostUnavailableErrorCopyWith<$Res> {
  factory _$$HostUnavailableErrorCopyWith(_$HostUnavailableError value,
          $Res Function(_$HostUnavailableError) then) =
      __$$HostUnavailableErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HostUnavailableErrorCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements _$$HostUnavailableErrorCopyWith<$Res> {
  __$$HostUnavailableErrorCopyWithImpl(_$HostUnavailableError _value,
      $Res Function(_$HostUnavailableError) _then)
      : super(_value, (v) => _then(v as _$HostUnavailableError));

  @override
  _$HostUnavailableError get _value => super._value as _$HostUnavailableError;
}

/// @nodoc

class _$HostUnavailableError implements HostUnavailableError {
  const _$HostUnavailableError();

  @override
  String toString() {
    return 'LoginState.hostUnavailableError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HostUnavailableError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int value) dataUpdated,
    required TResult Function(String? message, VoidCallback retryCallback)
        unknownError,
    required TResult Function() hostUnavailableError,
  }) {
    return hostUnavailableError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int value)? dataUpdated,
    TResult Function(String? message, VoidCallback retryCallback)? unknownError,
    TResult Function()? hostUnavailableError,
  }) {
    return hostUnavailableError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int value)? dataUpdated,
    TResult Function(String? message, VoidCallback retryCallback)? unknownError,
    TResult Function()? hostUnavailableError,
    required TResult orElse(),
  }) {
    if (hostUnavailableError != null) {
      return hostUnavailableError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(DataUpdated value) dataUpdated,
    required TResult Function(UnknownError value) unknownError,
    required TResult Function(HostUnavailableError value) hostUnavailableError,
  }) {
    return hostUnavailableError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(DataUpdated value)? dataUpdated,
    TResult Function(UnknownError value)? unknownError,
    TResult Function(HostUnavailableError value)? hostUnavailableError,
  }) {
    return hostUnavailableError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(DataUpdated value)? dataUpdated,
    TResult Function(UnknownError value)? unknownError,
    TResult Function(HostUnavailableError value)? hostUnavailableError,
    required TResult orElse(),
  }) {
    if (hostUnavailableError != null) {
      return hostUnavailableError(this);
    }
    return orElse();
  }
}

abstract class HostUnavailableError implements LoginState {
  const factory HostUnavailableError() = _$HostUnavailableError;
}
