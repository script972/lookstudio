// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClientScreenState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ClientScreenState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ClientScreenState()';
  }
}

/// @nodoc
class $ClientScreenStateCopyWith<$Res> {
  $ClientScreenStateCopyWith(
      ClientScreenState _, $Res Function(ClientScreenState) __);
}

/// Adds pattern-matching-related methods to [ClientScreenState].
extension ClientScreenStatePatterns on ClientScreenState {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClinetInitialState value)? initial,
    TResult Function(ClientLoadingState value)? loading,
    TResult Function(ClientLoadedState value)? loaded,
    TResult Function(ClientErrorState value)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case ClinetInitialState() when initial != null:
        return initial(_that);
      case ClientLoadingState() when loading != null:
        return loading(_that);
      case ClientLoadedState() when loaded != null:
        return loaded(_that);
      case ClientErrorState() when error != null:
        return error(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClinetInitialState value) initial,
    required TResult Function(ClientLoadingState value) loading,
    required TResult Function(ClientLoadedState value) loaded,
    required TResult Function(ClientErrorState value) error,
  }) {
    final _that = this;
    switch (_that) {
      case ClinetInitialState():
        return initial(_that);
      case ClientLoadingState():
        return loading(_that);
      case ClientLoadedState():
        return loaded(_that);
      case ClientErrorState():
        return error(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClinetInitialState value)? initial,
    TResult? Function(ClientLoadingState value)? loading,
    TResult? Function(ClientLoadedState value)? loaded,
    TResult? Function(ClientErrorState value)? error,
  }) {
    final _that = this;
    switch (_that) {
      case ClinetInitialState() when initial != null:
        return initial(_that);
      case ClientLoadingState() when loading != null:
        return loading(_that);
      case ClientLoadedState() when loaded != null:
        return loaded(_that);
      case ClientErrorState() when error != null:
        return error(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserModel> users)? loaded,
    TResult Function(Object? exception)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case ClinetInitialState() when initial != null:
        return initial();
      case ClientLoadingState() when loading != null:
        return loading();
      case ClientLoadedState() when loaded != null:
        return loaded(_that.users);
      case ClientErrorState() when error != null:
        return error(_that.exception);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserModel> users) loaded,
    required TResult Function(Object? exception) error,
  }) {
    final _that = this;
    switch (_that) {
      case ClinetInitialState():
        return initial();
      case ClientLoadingState():
        return loading();
      case ClientLoadedState():
        return loaded(_that.users);
      case ClientErrorState():
        return error(_that.exception);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserModel> users)? loaded,
    TResult? Function(Object? exception)? error,
  }) {
    final _that = this;
    switch (_that) {
      case ClinetInitialState() when initial != null:
        return initial();
      case ClientLoadingState() when loading != null:
        return loading();
      case ClientLoadedState() when loaded != null:
        return loaded(_that.users);
      case ClientErrorState() when error != null:
        return error(_that.exception);
      case _:
        return null;
    }
  }
}

/// @nodoc

class ClinetInitialState implements ClientScreenState {
  const ClinetInitialState();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ClinetInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ClientScreenState.initial()';
  }
}

/// @nodoc

class ClientLoadingState implements ClientScreenState {
  const ClientLoadingState();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ClientLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ClientScreenState.loading()';
  }
}

/// @nodoc

class ClientLoadedState implements ClientScreenState {
  const ClientLoadedState(List<UserModel> users) : _users = users;

  final List<UserModel> _users;
  List<UserModel> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  /// Create a copy of ClientScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ClientLoadedStateCopyWith<ClientLoadedState> get copyWith =>
      _$ClientLoadedStateCopyWithImpl<ClientLoadedState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ClientLoadedState &&
            const DeepCollectionEquality().equals(other.users, _users));
  }

  @override
  int get hashCode {
    return Object.hash(
        runtimeType, const DeepCollectionEquality().hash(_users));
  }

  @override
  String toString() {
    return 'ClientScreenState.loaded(users: $users)';
  }
}

/// @nodoc
abstract mixin class $ClientLoadedStateCopyWith<$Res>
    implements $ClientScreenStateCopyWith<$Res> {
  factory $ClientLoadedStateCopyWith(
          ClientLoadedState value, $Res Function(ClientLoadedState) _then) =
      _$ClientLoadedStateCopyWithImpl;
  @useResult
  $Res call({List<UserModel> users});
}

/// @nodoc
class _$ClientLoadedStateCopyWithImpl<$Res>
    implements $ClientLoadedStateCopyWith<$Res> {
  _$ClientLoadedStateCopyWithImpl(this._self, this._then);

  final ClientLoadedState _self;
  final $Res Function(ClientLoadedState) _then;

  /// Create a copy of ClientScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? users = null,
  }) {
    return _then(ClientLoadedState(
      null == users
          ? _self._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
    ));
  }
}

/// @nodoc

class ClientErrorState implements ClientScreenState {
  const ClientErrorState({this.exception});

  final Object? exception;

  /// Create a copy of ClientScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ClientErrorStateCopyWith<ClientErrorState> get copyWith =>
      _$ClientErrorStateCopyWithImpl<ClientErrorState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ClientErrorState &&
            const DeepCollectionEquality().equals(other.exception, exception));
  }

  @override
  int get hashCode {
    return Object.hash(
        runtimeType, const DeepCollectionEquality().hash(exception));
  }

  @override
  String toString() {
    return 'ClientScreenState.error(exception: $exception)';
  }
}

/// @nodoc
abstract mixin class $ClientErrorStateCopyWith<$Res>
    implements $ClientScreenStateCopyWith<$Res> {
  factory $ClientErrorStateCopyWith(
          ClientErrorState value, $Res Function(ClientErrorState) _then) =
      _$ClientErrorStateCopyWithImpl;
  @useResult
  $Res call({Object? exception});
}

/// @nodoc
class _$ClientErrorStateCopyWithImpl<$Res>
    implements $ClientErrorStateCopyWith<$Res> {
  _$ClientErrorStateCopyWithImpl(this._self, this._then);

  final ClientErrorState _self;
  final $Res Function(ClientErrorState) _then;

  /// Create a copy of ClientScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(ClientErrorState(
      exception: freezed == exception ? _self.exception : exception,
    ));
  }
}

// dart format on
