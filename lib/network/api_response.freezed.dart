// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApiResponse<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) ok,
    required TResult Function() noAuth,
    required TResult Function() hostUnavailable,
    required TResult Function(String? message) unknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? ok,
    TResult? Function()? noAuth,
    TResult? Function()? hostUnavailable,
    TResult? Function(String? message)? unknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? ok,
    TResult Function()? noAuth,
    TResult Function()? hostUnavailable,
    TResult Function(String? message)? unknownError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ok<T> value) ok,
    required TResult Function(NoAuth<T> value) noAuth,
    required TResult Function(HostUnavailable<T> value) hostUnavailable,
    required TResult Function(UnknownError<T> value) unknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Ok<T> value)? ok,
    TResult? Function(NoAuth<T> value)? noAuth,
    TResult? Function(HostUnavailable<T> value)? hostUnavailable,
    TResult? Function(UnknownError<T> value)? unknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ok<T> value)? ok,
    TResult Function(NoAuth<T> value)? noAuth,
    TResult Function(HostUnavailable<T> value)? hostUnavailable,
    TResult Function(UnknownError<T> value)? unknownError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseCopyWith<T, $Res> {
  factory $ApiResponseCopyWith(
          ApiResponse<T> value, $Res Function(ApiResponse<T>) then) =
      _$ApiResponseCopyWithImpl<T, $Res, ApiResponse<T>>;
}

/// @nodoc
class _$ApiResponseCopyWithImpl<T, $Res, $Val extends ApiResponse<T>>
    implements $ApiResponseCopyWith<T, $Res> {
  _$ApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OkCopyWith<T, $Res> {
  factory _$$OkCopyWith(_$Ok<T> value, $Res Function(_$Ok<T>) then) =
      __$$OkCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$OkCopyWithImpl<T, $Res>
    extends _$ApiResponseCopyWithImpl<T, $Res, _$Ok<T>>
    implements _$$OkCopyWith<T, $Res> {
  __$$OkCopyWithImpl(_$Ok<T> _value, $Res Function(_$Ok<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$Ok<T>(
      freezed == data
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
    return 'ApiResponse<$T>.ok(data: $data)';
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
  @pragma('vm:prefer-inline')
  _$$OkCopyWith<T, _$Ok<T>> get copyWith =>
      __$$OkCopyWithImpl<T, _$Ok<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) ok,
    required TResult Function() noAuth,
    required TResult Function() hostUnavailable,
    required TResult Function(String? message) unknownError,
  }) {
    return ok(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? ok,
    TResult? Function()? noAuth,
    TResult? Function()? hostUnavailable,
    TResult? Function(String? message)? unknownError,
  }) {
    return ok?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? ok,
    TResult Function()? noAuth,
    TResult Function()? hostUnavailable,
    TResult Function(String? message)? unknownError,
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
    required TResult Function(NoAuth<T> value) noAuth,
    required TResult Function(HostUnavailable<T> value) hostUnavailable,
    required TResult Function(UnknownError<T> value) unknownError,
  }) {
    return ok(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Ok<T> value)? ok,
    TResult? Function(NoAuth<T> value)? noAuth,
    TResult? Function(HostUnavailable<T> value)? hostUnavailable,
    TResult? Function(UnknownError<T> value)? unknownError,
  }) {
    return ok?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ok<T> value)? ok,
    TResult Function(NoAuth<T> value)? noAuth,
    TResult Function(HostUnavailable<T> value)? hostUnavailable,
    TResult Function(UnknownError<T> value)? unknownError,
    required TResult orElse(),
  }) {
    if (ok != null) {
      return ok(this);
    }
    return orElse();
  }
}

abstract class Ok<T> implements ApiResponse<T> {
  const factory Ok(final T data) = _$Ok<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$OkCopyWith<T, _$Ok<T>> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoAuthCopyWith<T, $Res> {
  factory _$$NoAuthCopyWith(
          _$NoAuth<T> value, $Res Function(_$NoAuth<T>) then) =
      __$$NoAuthCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$NoAuthCopyWithImpl<T, $Res>
    extends _$ApiResponseCopyWithImpl<T, $Res, _$NoAuth<T>>
    implements _$$NoAuthCopyWith<T, $Res> {
  __$$NoAuthCopyWithImpl(_$NoAuth<T> _value, $Res Function(_$NoAuth<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoAuth<T> implements NoAuth<T> {
  const _$NoAuth();

  @override
  String toString() {
    return 'ApiResponse<$T>.noAuth()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoAuth<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) ok,
    required TResult Function() noAuth,
    required TResult Function() hostUnavailable,
    required TResult Function(String? message) unknownError,
  }) {
    return noAuth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? ok,
    TResult? Function()? noAuth,
    TResult? Function()? hostUnavailable,
    TResult? Function(String? message)? unknownError,
  }) {
    return noAuth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? ok,
    TResult Function()? noAuth,
    TResult Function()? hostUnavailable,
    TResult Function(String? message)? unknownError,
    required TResult orElse(),
  }) {
    if (noAuth != null) {
      return noAuth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ok<T> value) ok,
    required TResult Function(NoAuth<T> value) noAuth,
    required TResult Function(HostUnavailable<T> value) hostUnavailable,
    required TResult Function(UnknownError<T> value) unknownError,
  }) {
    return noAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Ok<T> value)? ok,
    TResult? Function(NoAuth<T> value)? noAuth,
    TResult? Function(HostUnavailable<T> value)? hostUnavailable,
    TResult? Function(UnknownError<T> value)? unknownError,
  }) {
    return noAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ok<T> value)? ok,
    TResult Function(NoAuth<T> value)? noAuth,
    TResult Function(HostUnavailable<T> value)? hostUnavailable,
    TResult Function(UnknownError<T> value)? unknownError,
    required TResult orElse(),
  }) {
    if (noAuth != null) {
      return noAuth(this);
    }
    return orElse();
  }
}

abstract class NoAuth<T> implements ApiResponse<T> {
  const factory NoAuth() = _$NoAuth<T>;
}

/// @nodoc
abstract class _$$HostUnavailableCopyWith<T, $Res> {
  factory _$$HostUnavailableCopyWith(_$HostUnavailable<T> value,
          $Res Function(_$HostUnavailable<T>) then) =
      __$$HostUnavailableCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$HostUnavailableCopyWithImpl<T, $Res>
    extends _$ApiResponseCopyWithImpl<T, $Res, _$HostUnavailable<T>>
    implements _$$HostUnavailableCopyWith<T, $Res> {
  __$$HostUnavailableCopyWithImpl(
      _$HostUnavailable<T> _value, $Res Function(_$HostUnavailable<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HostUnavailable<T> implements HostUnavailable<T> {
  const _$HostUnavailable();

  @override
  String toString() {
    return 'ApiResponse<$T>.hostUnavailable()';
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
    required TResult Function() noAuth,
    required TResult Function() hostUnavailable,
    required TResult Function(String? message) unknownError,
  }) {
    return hostUnavailable();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? ok,
    TResult? Function()? noAuth,
    TResult? Function()? hostUnavailable,
    TResult? Function(String? message)? unknownError,
  }) {
    return hostUnavailable?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? ok,
    TResult Function()? noAuth,
    TResult Function()? hostUnavailable,
    TResult Function(String? message)? unknownError,
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
    required TResult Function(NoAuth<T> value) noAuth,
    required TResult Function(HostUnavailable<T> value) hostUnavailable,
    required TResult Function(UnknownError<T> value) unknownError,
  }) {
    return hostUnavailable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Ok<T> value)? ok,
    TResult? Function(NoAuth<T> value)? noAuth,
    TResult? Function(HostUnavailable<T> value)? hostUnavailable,
    TResult? Function(UnknownError<T> value)? unknownError,
  }) {
    return hostUnavailable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ok<T> value)? ok,
    TResult Function(NoAuth<T> value)? noAuth,
    TResult Function(HostUnavailable<T> value)? hostUnavailable,
    TResult Function(UnknownError<T> value)? unknownError,
    required TResult orElse(),
  }) {
    if (hostUnavailable != null) {
      return hostUnavailable(this);
    }
    return orElse();
  }
}

abstract class HostUnavailable<T> implements ApiResponse<T> {
  const factory HostUnavailable() = _$HostUnavailable<T>;
}

/// @nodoc
abstract class _$$UnknownErrorCopyWith<T, $Res> {
  factory _$$UnknownErrorCopyWith(
          _$UnknownError<T> value, $Res Function(_$UnknownError<T>) then) =
      __$$UnknownErrorCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$UnknownErrorCopyWithImpl<T, $Res>
    extends _$ApiResponseCopyWithImpl<T, $Res, _$UnknownError<T>>
    implements _$$UnknownErrorCopyWith<T, $Res> {
  __$$UnknownErrorCopyWithImpl(
      _$UnknownError<T> _value, $Res Function(_$UnknownError<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$UnknownError<T>(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UnknownError<T> implements UnknownError<T> {
  const _$UnknownError({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'ApiResponse<$T>.unknownError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownError<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownErrorCopyWith<T, _$UnknownError<T>> get copyWith =>
      __$$UnknownErrorCopyWithImpl<T, _$UnknownError<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) ok,
    required TResult Function() noAuth,
    required TResult Function() hostUnavailable,
    required TResult Function(String? message) unknownError,
  }) {
    return unknownError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? ok,
    TResult? Function()? noAuth,
    TResult? Function()? hostUnavailable,
    TResult? Function(String? message)? unknownError,
  }) {
    return unknownError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? ok,
    TResult Function()? noAuth,
    TResult Function()? hostUnavailable,
    TResult Function(String? message)? unknownError,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ok<T> value) ok,
    required TResult Function(NoAuth<T> value) noAuth,
    required TResult Function(HostUnavailable<T> value) hostUnavailable,
    required TResult Function(UnknownError<T> value) unknownError,
  }) {
    return unknownError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Ok<T> value)? ok,
    TResult? Function(NoAuth<T> value)? noAuth,
    TResult? Function(HostUnavailable<T> value)? hostUnavailable,
    TResult? Function(UnknownError<T> value)? unknownError,
  }) {
    return unknownError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ok<T> value)? ok,
    TResult Function(NoAuth<T> value)? noAuth,
    TResult Function(HostUnavailable<T> value)? hostUnavailable,
    TResult Function(UnknownError<T> value)? unknownError,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError(this);
    }
    return orElse();
  }
}

abstract class UnknownError<T> implements ApiResponse<T> {
  const factory UnknownError({final String? message}) = _$UnknownError<T>;

  String? get message;
  @JsonKey(ignore: true)
  _$$UnknownErrorCopyWith<T, _$UnknownError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
