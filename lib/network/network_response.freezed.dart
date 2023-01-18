// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'network_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NetworkResponse<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) ok,
    required TResult Function(String message) invalidParameters,
    required TResult Function(String message) noAuth,
    required TResult Function(String message) noAccess,
    required TResult Function(String message) badRequest,
    required TResult Function(String message) notFound,
    required TResult Function(String message) conflict,
    required TResult Function(String message) noData,
    required TResult Function() hostUnavailable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? ok,
    TResult Function(String message)? invalidParameters,
    TResult Function(String message)? noAuth,
    TResult Function(String message)? noAccess,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? notFound,
    TResult Function(String message)? conflict,
    TResult Function(String message)? noData,
    TResult Function()? hostUnavailable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? ok,
    TResult Function(String message)? invalidParameters,
    TResult Function(String message)? noAuth,
    TResult Function(String message)? noAccess,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? notFound,
    TResult Function(String message)? conflict,
    TResult Function(String message)? noData,
    TResult Function()? hostUnavailable,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ok<T> value) ok,
    required TResult Function(InvalidParameters<T> value) invalidParameters,
    required TResult Function(NoAuth<T> value) noAuth,
    required TResult Function(NoAccess<T> value) noAccess,
    required TResult Function(BadRequest<T> value) badRequest,
    required TResult Function(NotFound<T> value) notFound,
    required TResult Function(Conflict<T> value) conflict,
    required TResult Function(NoData<T> value) noData,
    required TResult Function(HostUnavailable<T> value) hostUnavailable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Ok<T> value)? ok,
    TResult Function(InvalidParameters<T> value)? invalidParameters,
    TResult Function(NoAuth<T> value)? noAuth,
    TResult Function(NoAccess<T> value)? noAccess,
    TResult Function(BadRequest<T> value)? badRequest,
    TResult Function(NotFound<T> value)? notFound,
    TResult Function(Conflict<T> value)? conflict,
    TResult Function(NoData<T> value)? noData,
    TResult Function(HostUnavailable<T> value)? hostUnavailable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ok<T> value)? ok,
    TResult Function(InvalidParameters<T> value)? invalidParameters,
    TResult Function(NoAuth<T> value)? noAuth,
    TResult Function(NoAccess<T> value)? noAccess,
    TResult Function(BadRequest<T> value)? badRequest,
    TResult Function(NotFound<T> value)? notFound,
    TResult Function(Conflict<T> value)? conflict,
    TResult Function(NoData<T> value)? noData,
    TResult Function(HostUnavailable<T> value)? hostUnavailable,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkResponseCopyWith<T, $Res> {
  factory $NetworkResponseCopyWith(
          NetworkResponse<T> value, $Res Function(NetworkResponse<T>) then) =
      _$NetworkResponseCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$NetworkResponseCopyWithImpl<T, $Res>
    implements $NetworkResponseCopyWith<T, $Res> {
  _$NetworkResponseCopyWithImpl(this._value, this._then);

  final NetworkResponse<T> _value;
  // ignore: unused_field
  final $Res Function(NetworkResponse<T>) _then;
}

/// @nodoc
abstract class _$$OkCopyWith<T, $Res> {
  factory _$$OkCopyWith(_$Ok<T> value, $Res Function(_$Ok<T>) then) =
      __$$OkCopyWithImpl<T, $Res>;
  $Res call({T data});
}

/// @nodoc
class __$$OkCopyWithImpl<T, $Res> extends _$NetworkResponseCopyWithImpl<T, $Res>
    implements _$$OkCopyWith<T, $Res> {
  __$$OkCopyWithImpl(_$Ok<T> _value, $Res Function(_$Ok<T>) _then)
      : super(_value, (v) => _then(v as _$Ok<T>));

  @override
  _$Ok<T> get _value => super._value as _$Ok<T>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$Ok<T>(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$Ok<T> implements Ok<T> {
  const _$Ok(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'NetworkResponse<$T>.ok(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Ok<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$OkCopyWith<T, _$Ok<T>> get copyWith =>
      __$$OkCopyWithImpl<T, _$Ok<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) ok,
    required TResult Function(String message) invalidParameters,
    required TResult Function(String message) noAuth,
    required TResult Function(String message) noAccess,
    required TResult Function(String message) badRequest,
    required TResult Function(String message) notFound,
    required TResult Function(String message) conflict,
    required TResult Function(String message) noData,
    required TResult Function() hostUnavailable,
  }) {
    return ok(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? ok,
    TResult Function(String message)? invalidParameters,
    TResult Function(String message)? noAuth,
    TResult Function(String message)? noAccess,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? notFound,
    TResult Function(String message)? conflict,
    TResult Function(String message)? noData,
    TResult Function()? hostUnavailable,
  }) {
    return ok?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? ok,
    TResult Function(String message)? invalidParameters,
    TResult Function(String message)? noAuth,
    TResult Function(String message)? noAccess,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? notFound,
    TResult Function(String message)? conflict,
    TResult Function(String message)? noData,
    TResult Function()? hostUnavailable,
    required TResult orElse(),
  }) {
    if (ok != null) {
      return ok(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ok<T> value) ok,
    required TResult Function(InvalidParameters<T> value) invalidParameters,
    required TResult Function(NoAuth<T> value) noAuth,
    required TResult Function(NoAccess<T> value) noAccess,
    required TResult Function(BadRequest<T> value) badRequest,
    required TResult Function(NotFound<T> value) notFound,
    required TResult Function(Conflict<T> value) conflict,
    required TResult Function(NoData<T> value) noData,
    required TResult Function(HostUnavailable<T> value) hostUnavailable,
  }) {
    return ok(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Ok<T> value)? ok,
    TResult Function(InvalidParameters<T> value)? invalidParameters,
    TResult Function(NoAuth<T> value)? noAuth,
    TResult Function(NoAccess<T> value)? noAccess,
    TResult Function(BadRequest<T> value)? badRequest,
    TResult Function(NotFound<T> value)? notFound,
    TResult Function(Conflict<T> value)? conflict,
    TResult Function(NoData<T> value)? noData,
    TResult Function(HostUnavailable<T> value)? hostUnavailable,
  }) {
    return ok?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ok<T> value)? ok,
    TResult Function(InvalidParameters<T> value)? invalidParameters,
    TResult Function(NoAuth<T> value)? noAuth,
    TResult Function(NoAccess<T> value)? noAccess,
    TResult Function(BadRequest<T> value)? badRequest,
    TResult Function(NotFound<T> value)? notFound,
    TResult Function(Conflict<T> value)? conflict,
    TResult Function(NoData<T> value)? noData,
    TResult Function(HostUnavailable<T> value)? hostUnavailable,
    required TResult orElse(),
  }) {
    if (ok != null) {
      return ok(this);
    }
    return orElse();
  }
}

abstract class Ok<T> implements NetworkResponse<T> {
  const factory Ok(final T data) = _$Ok<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$OkCopyWith<T, _$Ok<T>> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidParametersCopyWith<T, $Res> {
  factory _$$InvalidParametersCopyWith(_$InvalidParameters<T> value,
          $Res Function(_$InvalidParameters<T>) then) =
      __$$InvalidParametersCopyWithImpl<T, $Res>;
  $Res call({String message});
}

/// @nodoc
class __$$InvalidParametersCopyWithImpl<T, $Res>
    extends _$NetworkResponseCopyWithImpl<T, $Res>
    implements _$$InvalidParametersCopyWith<T, $Res> {
  __$$InvalidParametersCopyWithImpl(_$InvalidParameters<T> _value,
      $Res Function(_$InvalidParameters<T>) _then)
      : super(_value, (v) => _then(v as _$InvalidParameters<T>));

  @override
  _$InvalidParameters<T> get _value => super._value as _$InvalidParameters<T>;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$InvalidParameters<T>(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidParameters<T> implements InvalidParameters<T> {
  const _$InvalidParameters(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'NetworkResponse<$T>.invalidParameters(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidParameters<T> &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$InvalidParametersCopyWith<T, _$InvalidParameters<T>> get copyWith =>
      __$$InvalidParametersCopyWithImpl<T, _$InvalidParameters<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) ok,
    required TResult Function(String message) invalidParameters,
    required TResult Function(String message) noAuth,
    required TResult Function(String message) noAccess,
    required TResult Function(String message) badRequest,
    required TResult Function(String message) notFound,
    required TResult Function(String message) conflict,
    required TResult Function(String message) noData,
    required TResult Function() hostUnavailable,
  }) {
    return invalidParameters(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? ok,
    TResult Function(String message)? invalidParameters,
    TResult Function(String message)? noAuth,
    TResult Function(String message)? noAccess,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? notFound,
    TResult Function(String message)? conflict,
    TResult Function(String message)? noData,
    TResult Function()? hostUnavailable,
  }) {
    return invalidParameters?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? ok,
    TResult Function(String message)? invalidParameters,
    TResult Function(String message)? noAuth,
    TResult Function(String message)? noAccess,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? notFound,
    TResult Function(String message)? conflict,
    TResult Function(String message)? noData,
    TResult Function()? hostUnavailable,
    required TResult orElse(),
  }) {
    if (invalidParameters != null) {
      return invalidParameters(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ok<T> value) ok,
    required TResult Function(InvalidParameters<T> value) invalidParameters,
    required TResult Function(NoAuth<T> value) noAuth,
    required TResult Function(NoAccess<T> value) noAccess,
    required TResult Function(BadRequest<T> value) badRequest,
    required TResult Function(NotFound<T> value) notFound,
    required TResult Function(Conflict<T> value) conflict,
    required TResult Function(NoData<T> value) noData,
    required TResult Function(HostUnavailable<T> value) hostUnavailable,
  }) {
    return invalidParameters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Ok<T> value)? ok,
    TResult Function(InvalidParameters<T> value)? invalidParameters,
    TResult Function(NoAuth<T> value)? noAuth,
    TResult Function(NoAccess<T> value)? noAccess,
    TResult Function(BadRequest<T> value)? badRequest,
    TResult Function(NotFound<T> value)? notFound,
    TResult Function(Conflict<T> value)? conflict,
    TResult Function(NoData<T> value)? noData,
    TResult Function(HostUnavailable<T> value)? hostUnavailable,
  }) {
    return invalidParameters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ok<T> value)? ok,
    TResult Function(InvalidParameters<T> value)? invalidParameters,
    TResult Function(NoAuth<T> value)? noAuth,
    TResult Function(NoAccess<T> value)? noAccess,
    TResult Function(BadRequest<T> value)? badRequest,
    TResult Function(NotFound<T> value)? notFound,
    TResult Function(Conflict<T> value)? conflict,
    TResult Function(NoData<T> value)? noData,
    TResult Function(HostUnavailable<T> value)? hostUnavailable,
    required TResult orElse(),
  }) {
    if (invalidParameters != null) {
      return invalidParameters(this);
    }
    return orElse();
  }
}

abstract class InvalidParameters<T> implements NetworkResponse<T> {
  const factory InvalidParameters(final String message) =
      _$InvalidParameters<T>;

  String get message;
  @JsonKey(ignore: true)
  _$$InvalidParametersCopyWith<T, _$InvalidParameters<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoAuthCopyWith<T, $Res> {
  factory _$$NoAuthCopyWith(
          _$NoAuth<T> value, $Res Function(_$NoAuth<T>) then) =
      __$$NoAuthCopyWithImpl<T, $Res>;
  $Res call({String message});
}

/// @nodoc
class __$$NoAuthCopyWithImpl<T, $Res>
    extends _$NetworkResponseCopyWithImpl<T, $Res>
    implements _$$NoAuthCopyWith<T, $Res> {
  __$$NoAuthCopyWithImpl(_$NoAuth<T> _value, $Res Function(_$NoAuth<T>) _then)
      : super(_value, (v) => _then(v as _$NoAuth<T>));

  @override
  _$NoAuth<T> get _value => super._value as _$NoAuth<T>;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$NoAuth<T>(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NoAuth<T> implements NoAuth<T> {
  const _$NoAuth(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'NetworkResponse<$T>.noAuth(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoAuth<T> &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$NoAuthCopyWith<T, _$NoAuth<T>> get copyWith =>
      __$$NoAuthCopyWithImpl<T, _$NoAuth<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) ok,
    required TResult Function(String message) invalidParameters,
    required TResult Function(String message) noAuth,
    required TResult Function(String message) noAccess,
    required TResult Function(String message) badRequest,
    required TResult Function(String message) notFound,
    required TResult Function(String message) conflict,
    required TResult Function(String message) noData,
    required TResult Function() hostUnavailable,
  }) {
    return noAuth(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? ok,
    TResult Function(String message)? invalidParameters,
    TResult Function(String message)? noAuth,
    TResult Function(String message)? noAccess,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? notFound,
    TResult Function(String message)? conflict,
    TResult Function(String message)? noData,
    TResult Function()? hostUnavailable,
  }) {
    return noAuth?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? ok,
    TResult Function(String message)? invalidParameters,
    TResult Function(String message)? noAuth,
    TResult Function(String message)? noAccess,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? notFound,
    TResult Function(String message)? conflict,
    TResult Function(String message)? noData,
    TResult Function()? hostUnavailable,
    required TResult orElse(),
  }) {
    if (noAuth != null) {
      return noAuth(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ok<T> value) ok,
    required TResult Function(InvalidParameters<T> value) invalidParameters,
    required TResult Function(NoAuth<T> value) noAuth,
    required TResult Function(NoAccess<T> value) noAccess,
    required TResult Function(BadRequest<T> value) badRequest,
    required TResult Function(NotFound<T> value) notFound,
    required TResult Function(Conflict<T> value) conflict,
    required TResult Function(NoData<T> value) noData,
    required TResult Function(HostUnavailable<T> value) hostUnavailable,
  }) {
    return noAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Ok<T> value)? ok,
    TResult Function(InvalidParameters<T> value)? invalidParameters,
    TResult Function(NoAuth<T> value)? noAuth,
    TResult Function(NoAccess<T> value)? noAccess,
    TResult Function(BadRequest<T> value)? badRequest,
    TResult Function(NotFound<T> value)? notFound,
    TResult Function(Conflict<T> value)? conflict,
    TResult Function(NoData<T> value)? noData,
    TResult Function(HostUnavailable<T> value)? hostUnavailable,
  }) {
    return noAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ok<T> value)? ok,
    TResult Function(InvalidParameters<T> value)? invalidParameters,
    TResult Function(NoAuth<T> value)? noAuth,
    TResult Function(NoAccess<T> value)? noAccess,
    TResult Function(BadRequest<T> value)? badRequest,
    TResult Function(NotFound<T> value)? notFound,
    TResult Function(Conflict<T> value)? conflict,
    TResult Function(NoData<T> value)? noData,
    TResult Function(HostUnavailable<T> value)? hostUnavailable,
    required TResult orElse(),
  }) {
    if (noAuth != null) {
      return noAuth(this);
    }
    return orElse();
  }
}

abstract class NoAuth<T> implements NetworkResponse<T> {
  const factory NoAuth(final String message) = _$NoAuth<T>;

  String get message;
  @JsonKey(ignore: true)
  _$$NoAuthCopyWith<T, _$NoAuth<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoAccessCopyWith<T, $Res> {
  factory _$$NoAccessCopyWith(
          _$NoAccess<T> value, $Res Function(_$NoAccess<T>) then) =
      __$$NoAccessCopyWithImpl<T, $Res>;
  $Res call({String message});
}

/// @nodoc
class __$$NoAccessCopyWithImpl<T, $Res>
    extends _$NetworkResponseCopyWithImpl<T, $Res>
    implements _$$NoAccessCopyWith<T, $Res> {
  __$$NoAccessCopyWithImpl(
      _$NoAccess<T> _value, $Res Function(_$NoAccess<T>) _then)
      : super(_value, (v) => _then(v as _$NoAccess<T>));

  @override
  _$NoAccess<T> get _value => super._value as _$NoAccess<T>;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$NoAccess<T>(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NoAccess<T> implements NoAccess<T> {
  const _$NoAccess(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'NetworkResponse<$T>.noAccess(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoAccess<T> &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$NoAccessCopyWith<T, _$NoAccess<T>> get copyWith =>
      __$$NoAccessCopyWithImpl<T, _$NoAccess<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) ok,
    required TResult Function(String message) invalidParameters,
    required TResult Function(String message) noAuth,
    required TResult Function(String message) noAccess,
    required TResult Function(String message) badRequest,
    required TResult Function(String message) notFound,
    required TResult Function(String message) conflict,
    required TResult Function(String message) noData,
    required TResult Function() hostUnavailable,
  }) {
    return noAccess(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? ok,
    TResult Function(String message)? invalidParameters,
    TResult Function(String message)? noAuth,
    TResult Function(String message)? noAccess,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? notFound,
    TResult Function(String message)? conflict,
    TResult Function(String message)? noData,
    TResult Function()? hostUnavailable,
  }) {
    return noAccess?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? ok,
    TResult Function(String message)? invalidParameters,
    TResult Function(String message)? noAuth,
    TResult Function(String message)? noAccess,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? notFound,
    TResult Function(String message)? conflict,
    TResult Function(String message)? noData,
    TResult Function()? hostUnavailable,
    required TResult orElse(),
  }) {
    if (noAccess != null) {
      return noAccess(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ok<T> value) ok,
    required TResult Function(InvalidParameters<T> value) invalidParameters,
    required TResult Function(NoAuth<T> value) noAuth,
    required TResult Function(NoAccess<T> value) noAccess,
    required TResult Function(BadRequest<T> value) badRequest,
    required TResult Function(NotFound<T> value) notFound,
    required TResult Function(Conflict<T> value) conflict,
    required TResult Function(NoData<T> value) noData,
    required TResult Function(HostUnavailable<T> value) hostUnavailable,
  }) {
    return noAccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Ok<T> value)? ok,
    TResult Function(InvalidParameters<T> value)? invalidParameters,
    TResult Function(NoAuth<T> value)? noAuth,
    TResult Function(NoAccess<T> value)? noAccess,
    TResult Function(BadRequest<T> value)? badRequest,
    TResult Function(NotFound<T> value)? notFound,
    TResult Function(Conflict<T> value)? conflict,
    TResult Function(NoData<T> value)? noData,
    TResult Function(HostUnavailable<T> value)? hostUnavailable,
  }) {
    return noAccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ok<T> value)? ok,
    TResult Function(InvalidParameters<T> value)? invalidParameters,
    TResult Function(NoAuth<T> value)? noAuth,
    TResult Function(NoAccess<T> value)? noAccess,
    TResult Function(BadRequest<T> value)? badRequest,
    TResult Function(NotFound<T> value)? notFound,
    TResult Function(Conflict<T> value)? conflict,
    TResult Function(NoData<T> value)? noData,
    TResult Function(HostUnavailable<T> value)? hostUnavailable,
    required TResult orElse(),
  }) {
    if (noAccess != null) {
      return noAccess(this);
    }
    return orElse();
  }
}

abstract class NoAccess<T> implements NetworkResponse<T> {
  const factory NoAccess(final String message) = _$NoAccess<T>;

  String get message;
  @JsonKey(ignore: true)
  _$$NoAccessCopyWith<T, _$NoAccess<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BadRequestCopyWith<T, $Res> {
  factory _$$BadRequestCopyWith(
          _$BadRequest<T> value, $Res Function(_$BadRequest<T>) then) =
      __$$BadRequestCopyWithImpl<T, $Res>;
  $Res call({String message});
}

/// @nodoc
class __$$BadRequestCopyWithImpl<T, $Res>
    extends _$NetworkResponseCopyWithImpl<T, $Res>
    implements _$$BadRequestCopyWith<T, $Res> {
  __$$BadRequestCopyWithImpl(
      _$BadRequest<T> _value, $Res Function(_$BadRequest<T>) _then)
      : super(_value, (v) => _then(v as _$BadRequest<T>));

  @override
  _$BadRequest<T> get _value => super._value as _$BadRequest<T>;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$BadRequest<T>(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BadRequest<T> implements BadRequest<T> {
  const _$BadRequest(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'NetworkResponse<$T>.badRequest(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BadRequest<T> &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$BadRequestCopyWith<T, _$BadRequest<T>> get copyWith =>
      __$$BadRequestCopyWithImpl<T, _$BadRequest<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) ok,
    required TResult Function(String message) invalidParameters,
    required TResult Function(String message) noAuth,
    required TResult Function(String message) noAccess,
    required TResult Function(String message) badRequest,
    required TResult Function(String message) notFound,
    required TResult Function(String message) conflict,
    required TResult Function(String message) noData,
    required TResult Function() hostUnavailable,
  }) {
    return badRequest(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? ok,
    TResult Function(String message)? invalidParameters,
    TResult Function(String message)? noAuth,
    TResult Function(String message)? noAccess,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? notFound,
    TResult Function(String message)? conflict,
    TResult Function(String message)? noData,
    TResult Function()? hostUnavailable,
  }) {
    return badRequest?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? ok,
    TResult Function(String message)? invalidParameters,
    TResult Function(String message)? noAuth,
    TResult Function(String message)? noAccess,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? notFound,
    TResult Function(String message)? conflict,
    TResult Function(String message)? noData,
    TResult Function()? hostUnavailable,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ok<T> value) ok,
    required TResult Function(InvalidParameters<T> value) invalidParameters,
    required TResult Function(NoAuth<T> value) noAuth,
    required TResult Function(NoAccess<T> value) noAccess,
    required TResult Function(BadRequest<T> value) badRequest,
    required TResult Function(NotFound<T> value) notFound,
    required TResult Function(Conflict<T> value) conflict,
    required TResult Function(NoData<T> value) noData,
    required TResult Function(HostUnavailable<T> value) hostUnavailable,
  }) {
    return badRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Ok<T> value)? ok,
    TResult Function(InvalidParameters<T> value)? invalidParameters,
    TResult Function(NoAuth<T> value)? noAuth,
    TResult Function(NoAccess<T> value)? noAccess,
    TResult Function(BadRequest<T> value)? badRequest,
    TResult Function(NotFound<T> value)? notFound,
    TResult Function(Conflict<T> value)? conflict,
    TResult Function(NoData<T> value)? noData,
    TResult Function(HostUnavailable<T> value)? hostUnavailable,
  }) {
    return badRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ok<T> value)? ok,
    TResult Function(InvalidParameters<T> value)? invalidParameters,
    TResult Function(NoAuth<T> value)? noAuth,
    TResult Function(NoAccess<T> value)? noAccess,
    TResult Function(BadRequest<T> value)? badRequest,
    TResult Function(NotFound<T> value)? notFound,
    TResult Function(Conflict<T> value)? conflict,
    TResult Function(NoData<T> value)? noData,
    TResult Function(HostUnavailable<T> value)? hostUnavailable,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(this);
    }
    return orElse();
  }
}

abstract class BadRequest<T> implements NetworkResponse<T> {
  const factory BadRequest(final String message) = _$BadRequest<T>;

  String get message;
  @JsonKey(ignore: true)
  _$$BadRequestCopyWith<T, _$BadRequest<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotFoundCopyWith<T, $Res> {
  factory _$$NotFoundCopyWith(
          _$NotFound<T> value, $Res Function(_$NotFound<T>) then) =
      __$$NotFoundCopyWithImpl<T, $Res>;
  $Res call({String message});
}

/// @nodoc
class __$$NotFoundCopyWithImpl<T, $Res>
    extends _$NetworkResponseCopyWithImpl<T, $Res>
    implements _$$NotFoundCopyWith<T, $Res> {
  __$$NotFoundCopyWithImpl(
      _$NotFound<T> _value, $Res Function(_$NotFound<T>) _then)
      : super(_value, (v) => _then(v as _$NotFound<T>));

  @override
  _$NotFound<T> get _value => super._value as _$NotFound<T>;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$NotFound<T>(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NotFound<T> implements NotFound<T> {
  const _$NotFound(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'NetworkResponse<$T>.notFound(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotFound<T> &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$NotFoundCopyWith<T, _$NotFound<T>> get copyWith =>
      __$$NotFoundCopyWithImpl<T, _$NotFound<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) ok,
    required TResult Function(String message) invalidParameters,
    required TResult Function(String message) noAuth,
    required TResult Function(String message) noAccess,
    required TResult Function(String message) badRequest,
    required TResult Function(String message) notFound,
    required TResult Function(String message) conflict,
    required TResult Function(String message) noData,
    required TResult Function() hostUnavailable,
  }) {
    return notFound(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? ok,
    TResult Function(String message)? invalidParameters,
    TResult Function(String message)? noAuth,
    TResult Function(String message)? noAccess,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? notFound,
    TResult Function(String message)? conflict,
    TResult Function(String message)? noData,
    TResult Function()? hostUnavailable,
  }) {
    return notFound?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? ok,
    TResult Function(String message)? invalidParameters,
    TResult Function(String message)? noAuth,
    TResult Function(String message)? noAccess,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? notFound,
    TResult Function(String message)? conflict,
    TResult Function(String message)? noData,
    TResult Function()? hostUnavailable,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ok<T> value) ok,
    required TResult Function(InvalidParameters<T> value) invalidParameters,
    required TResult Function(NoAuth<T> value) noAuth,
    required TResult Function(NoAccess<T> value) noAccess,
    required TResult Function(BadRequest<T> value) badRequest,
    required TResult Function(NotFound<T> value) notFound,
    required TResult Function(Conflict<T> value) conflict,
    required TResult Function(NoData<T> value) noData,
    required TResult Function(HostUnavailable<T> value) hostUnavailable,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Ok<T> value)? ok,
    TResult Function(InvalidParameters<T> value)? invalidParameters,
    TResult Function(NoAuth<T> value)? noAuth,
    TResult Function(NoAccess<T> value)? noAccess,
    TResult Function(BadRequest<T> value)? badRequest,
    TResult Function(NotFound<T> value)? notFound,
    TResult Function(Conflict<T> value)? conflict,
    TResult Function(NoData<T> value)? noData,
    TResult Function(HostUnavailable<T> value)? hostUnavailable,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ok<T> value)? ok,
    TResult Function(InvalidParameters<T> value)? invalidParameters,
    TResult Function(NoAuth<T> value)? noAuth,
    TResult Function(NoAccess<T> value)? noAccess,
    TResult Function(BadRequest<T> value)? badRequest,
    TResult Function(NotFound<T> value)? notFound,
    TResult Function(Conflict<T> value)? conflict,
    TResult Function(NoData<T> value)? noData,
    TResult Function(HostUnavailable<T> value)? hostUnavailable,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class NotFound<T> implements NetworkResponse<T> {
  const factory NotFound(final String message) = _$NotFound<T>;

  String get message;
  @JsonKey(ignore: true)
  _$$NotFoundCopyWith<T, _$NotFound<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConflictCopyWith<T, $Res> {
  factory _$$ConflictCopyWith(
          _$Conflict<T> value, $Res Function(_$Conflict<T>) then) =
      __$$ConflictCopyWithImpl<T, $Res>;
  $Res call({String message});
}

/// @nodoc
class __$$ConflictCopyWithImpl<T, $Res>
    extends _$NetworkResponseCopyWithImpl<T, $Res>
    implements _$$ConflictCopyWith<T, $Res> {
  __$$ConflictCopyWithImpl(
      _$Conflict<T> _value, $Res Function(_$Conflict<T>) _then)
      : super(_value, (v) => _then(v as _$Conflict<T>));

  @override
  _$Conflict<T> get _value => super._value as _$Conflict<T>;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$Conflict<T>(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Conflict<T> implements Conflict<T> {
  const _$Conflict(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'NetworkResponse<$T>.conflict(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Conflict<T> &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$ConflictCopyWith<T, _$Conflict<T>> get copyWith =>
      __$$ConflictCopyWithImpl<T, _$Conflict<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) ok,
    required TResult Function(String message) invalidParameters,
    required TResult Function(String message) noAuth,
    required TResult Function(String message) noAccess,
    required TResult Function(String message) badRequest,
    required TResult Function(String message) notFound,
    required TResult Function(String message) conflict,
    required TResult Function(String message) noData,
    required TResult Function() hostUnavailable,
  }) {
    return conflict(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? ok,
    TResult Function(String message)? invalidParameters,
    TResult Function(String message)? noAuth,
    TResult Function(String message)? noAccess,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? notFound,
    TResult Function(String message)? conflict,
    TResult Function(String message)? noData,
    TResult Function()? hostUnavailable,
  }) {
    return conflict?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? ok,
    TResult Function(String message)? invalidParameters,
    TResult Function(String message)? noAuth,
    TResult Function(String message)? noAccess,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? notFound,
    TResult Function(String message)? conflict,
    TResult Function(String message)? noData,
    TResult Function()? hostUnavailable,
    required TResult orElse(),
  }) {
    if (conflict != null) {
      return conflict(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ok<T> value) ok,
    required TResult Function(InvalidParameters<T> value) invalidParameters,
    required TResult Function(NoAuth<T> value) noAuth,
    required TResult Function(NoAccess<T> value) noAccess,
    required TResult Function(BadRequest<T> value) badRequest,
    required TResult Function(NotFound<T> value) notFound,
    required TResult Function(Conflict<T> value) conflict,
    required TResult Function(NoData<T> value) noData,
    required TResult Function(HostUnavailable<T> value) hostUnavailable,
  }) {
    return conflict(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Ok<T> value)? ok,
    TResult Function(InvalidParameters<T> value)? invalidParameters,
    TResult Function(NoAuth<T> value)? noAuth,
    TResult Function(NoAccess<T> value)? noAccess,
    TResult Function(BadRequest<T> value)? badRequest,
    TResult Function(NotFound<T> value)? notFound,
    TResult Function(Conflict<T> value)? conflict,
    TResult Function(NoData<T> value)? noData,
    TResult Function(HostUnavailable<T> value)? hostUnavailable,
  }) {
    return conflict?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ok<T> value)? ok,
    TResult Function(InvalidParameters<T> value)? invalidParameters,
    TResult Function(NoAuth<T> value)? noAuth,
    TResult Function(NoAccess<T> value)? noAccess,
    TResult Function(BadRequest<T> value)? badRequest,
    TResult Function(NotFound<T> value)? notFound,
    TResult Function(Conflict<T> value)? conflict,
    TResult Function(NoData<T> value)? noData,
    TResult Function(HostUnavailable<T> value)? hostUnavailable,
    required TResult orElse(),
  }) {
    if (conflict != null) {
      return conflict(this);
    }
    return orElse();
  }
}

abstract class Conflict<T> implements NetworkResponse<T> {
  const factory Conflict(final String message) = _$Conflict<T>;

  String get message;
  @JsonKey(ignore: true)
  _$$ConflictCopyWith<T, _$Conflict<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoDataCopyWith<T, $Res> {
  factory _$$NoDataCopyWith(
          _$NoData<T> value, $Res Function(_$NoData<T>) then) =
      __$$NoDataCopyWithImpl<T, $Res>;
  $Res call({String message});
}

/// @nodoc
class __$$NoDataCopyWithImpl<T, $Res>
    extends _$NetworkResponseCopyWithImpl<T, $Res>
    implements _$$NoDataCopyWith<T, $Res> {
  __$$NoDataCopyWithImpl(_$NoData<T> _value, $Res Function(_$NoData<T>) _then)
      : super(_value, (v) => _then(v as _$NoData<T>));

  @override
  _$NoData<T> get _value => super._value as _$NoData<T>;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$NoData<T>(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NoData<T> implements NoData<T> {
  const _$NoData(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'NetworkResponse<$T>.noData(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoData<T> &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$NoDataCopyWith<T, _$NoData<T>> get copyWith =>
      __$$NoDataCopyWithImpl<T, _$NoData<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) ok,
    required TResult Function(String message) invalidParameters,
    required TResult Function(String message) noAuth,
    required TResult Function(String message) noAccess,
    required TResult Function(String message) badRequest,
    required TResult Function(String message) notFound,
    required TResult Function(String message) conflict,
    required TResult Function(String message) noData,
    required TResult Function() hostUnavailable,
  }) {
    return noData(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? ok,
    TResult Function(String message)? invalidParameters,
    TResult Function(String message)? noAuth,
    TResult Function(String message)? noAccess,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? notFound,
    TResult Function(String message)? conflict,
    TResult Function(String message)? noData,
    TResult Function()? hostUnavailable,
  }) {
    return noData?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? ok,
    TResult Function(String message)? invalidParameters,
    TResult Function(String message)? noAuth,
    TResult Function(String message)? noAccess,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? notFound,
    TResult Function(String message)? conflict,
    TResult Function(String message)? noData,
    TResult Function()? hostUnavailable,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ok<T> value) ok,
    required TResult Function(InvalidParameters<T> value) invalidParameters,
    required TResult Function(NoAuth<T> value) noAuth,
    required TResult Function(NoAccess<T> value) noAccess,
    required TResult Function(BadRequest<T> value) badRequest,
    required TResult Function(NotFound<T> value) notFound,
    required TResult Function(Conflict<T> value) conflict,
    required TResult Function(NoData<T> value) noData,
    required TResult Function(HostUnavailable<T> value) hostUnavailable,
  }) {
    return noData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Ok<T> value)? ok,
    TResult Function(InvalidParameters<T> value)? invalidParameters,
    TResult Function(NoAuth<T> value)? noAuth,
    TResult Function(NoAccess<T> value)? noAccess,
    TResult Function(BadRequest<T> value)? badRequest,
    TResult Function(NotFound<T> value)? notFound,
    TResult Function(Conflict<T> value)? conflict,
    TResult Function(NoData<T> value)? noData,
    TResult Function(HostUnavailable<T> value)? hostUnavailable,
  }) {
    return noData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ok<T> value)? ok,
    TResult Function(InvalidParameters<T> value)? invalidParameters,
    TResult Function(NoAuth<T> value)? noAuth,
    TResult Function(NoAccess<T> value)? noAccess,
    TResult Function(BadRequest<T> value)? badRequest,
    TResult Function(NotFound<T> value)? notFound,
    TResult Function(Conflict<T> value)? conflict,
    TResult Function(NoData<T> value)? noData,
    TResult Function(HostUnavailable<T> value)? hostUnavailable,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData(this);
    }
    return orElse();
  }
}

abstract class NoData<T> implements NetworkResponse<T> {
  const factory NoData(final String message) = _$NoData<T>;

  String get message;
  @JsonKey(ignore: true)
  _$$NoDataCopyWith<T, _$NoData<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HostUnavailableCopyWith<T, $Res> {
  factory _$$HostUnavailableCopyWith(_$HostUnavailable<T> value,
          $Res Function(_$HostUnavailable<T>) then) =
      __$$HostUnavailableCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$HostUnavailableCopyWithImpl<T, $Res>
    extends _$NetworkResponseCopyWithImpl<T, $Res>
    implements _$$HostUnavailableCopyWith<T, $Res> {
  __$$HostUnavailableCopyWithImpl(
      _$HostUnavailable<T> _value, $Res Function(_$HostUnavailable<T>) _then)
      : super(_value, (v) => _then(v as _$HostUnavailable<T>));

  @override
  _$HostUnavailable<T> get _value => super._value as _$HostUnavailable<T>;
}

/// @nodoc

class _$HostUnavailable<T> implements HostUnavailable<T> {
  const _$HostUnavailable();

  @override
  String toString() {
    return 'NetworkResponse<$T>.hostUnavailable()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HostUnavailable<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) ok,
    required TResult Function(String message) invalidParameters,
    required TResult Function(String message) noAuth,
    required TResult Function(String message) noAccess,
    required TResult Function(String message) badRequest,
    required TResult Function(String message) notFound,
    required TResult Function(String message) conflict,
    required TResult Function(String message) noData,
    required TResult Function() hostUnavailable,
  }) {
    return hostUnavailable();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? ok,
    TResult Function(String message)? invalidParameters,
    TResult Function(String message)? noAuth,
    TResult Function(String message)? noAccess,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? notFound,
    TResult Function(String message)? conflict,
    TResult Function(String message)? noData,
    TResult Function()? hostUnavailable,
  }) {
    return hostUnavailable?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? ok,
    TResult Function(String message)? invalidParameters,
    TResult Function(String message)? noAuth,
    TResult Function(String message)? noAccess,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? notFound,
    TResult Function(String message)? conflict,
    TResult Function(String message)? noData,
    TResult Function()? hostUnavailable,
    required TResult orElse(),
  }) {
    if (hostUnavailable != null) {
      return hostUnavailable();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ok<T> value) ok,
    required TResult Function(InvalidParameters<T> value) invalidParameters,
    required TResult Function(NoAuth<T> value) noAuth,
    required TResult Function(NoAccess<T> value) noAccess,
    required TResult Function(BadRequest<T> value) badRequest,
    required TResult Function(NotFound<T> value) notFound,
    required TResult Function(Conflict<T> value) conflict,
    required TResult Function(NoData<T> value) noData,
    required TResult Function(HostUnavailable<T> value) hostUnavailable,
  }) {
    return hostUnavailable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Ok<T> value)? ok,
    TResult Function(InvalidParameters<T> value)? invalidParameters,
    TResult Function(NoAuth<T> value)? noAuth,
    TResult Function(NoAccess<T> value)? noAccess,
    TResult Function(BadRequest<T> value)? badRequest,
    TResult Function(NotFound<T> value)? notFound,
    TResult Function(Conflict<T> value)? conflict,
    TResult Function(NoData<T> value)? noData,
    TResult Function(HostUnavailable<T> value)? hostUnavailable,
  }) {
    return hostUnavailable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ok<T> value)? ok,
    TResult Function(InvalidParameters<T> value)? invalidParameters,
    TResult Function(NoAuth<T> value)? noAuth,
    TResult Function(NoAccess<T> value)? noAccess,
    TResult Function(BadRequest<T> value)? badRequest,
    TResult Function(NotFound<T> value)? notFound,
    TResult Function(Conflict<T> value)? conflict,
    TResult Function(NoData<T> value)? noData,
    TResult Function(HostUnavailable<T> value)? hostUnavailable,
    required TResult orElse(),
  }) {
    if (hostUnavailable != null) {
      return hostUnavailable(this);
    }
    return orElse();
  }
}

abstract class HostUnavailable<T> implements NetworkResponse<T> {
  const factory HostUnavailable() = _$HostUnavailable<T>;
}
