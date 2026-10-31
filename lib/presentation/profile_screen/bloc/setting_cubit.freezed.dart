// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'setting_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SettingState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SettingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SettingState()';
  }
}

/// @nodoc
class $SettingStateCopyWith<$Res> {
  $SettingStateCopyWith(SettingState _, $Res Function(SettingState) __);
}

/// Adds pattern-matching-related methods to [SettingState].
extension SettingStatePatterns on SettingState {
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
    TResult Function(InitialSettingState value)? initial,
    TResult Function(LogoutSettingState value)? logoutState,
    TResult Function(LoadedSettingState value)? successfullySavingState,
    TResult Function(ErrorSettingState value)? errorSavingState,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case InitialSettingState() when initial != null:
        return initial(_that);
      case LogoutSettingState() when logoutState != null:
        return logoutState(_that);
      case LoadedSettingState() when successfullySavingState != null:
        return successfullySavingState(_that);
      case ErrorSettingState() when errorSavingState != null:
        return errorSavingState(_that);
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
    required TResult Function(InitialSettingState value) initial,
    required TResult Function(LogoutSettingState value) logoutState,
    required TResult Function(LoadedSettingState value) successfullySavingState,
    required TResult Function(ErrorSettingState value) errorSavingState,
  }) {
    final _that = this;
    switch (_that) {
      case InitialSettingState():
        return initial(_that);
      case LogoutSettingState():
        return logoutState(_that);
      case LoadedSettingState():
        return successfullySavingState(_that);
      case ErrorSettingState():
        return errorSavingState(_that);
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
    TResult? Function(InitialSettingState value)? initial,
    TResult? Function(LogoutSettingState value)? logoutState,
    TResult? Function(LoadedSettingState value)? successfullySavingState,
    TResult? Function(ErrorSettingState value)? errorSavingState,
  }) {
    final _that = this;
    switch (_that) {
      case InitialSettingState() when initial != null:
        return initial(_that);
      case LogoutSettingState() when logoutState != null:
        return logoutState(_that);
      case LoadedSettingState() when successfullySavingState != null:
        return successfullySavingState(_that);
      case ErrorSettingState() when errorSavingState != null:
        return errorSavingState(_that);
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
    TResult Function()? logoutState,
    TResult Function()? successfullySavingState,
    TResult Function(Object? exception)? errorSavingState,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case InitialSettingState() when initial != null:
        return initial();
      case LogoutSettingState() when logoutState != null:
        return logoutState();
      case LoadedSettingState() when successfullySavingState != null:
        return successfullySavingState();
      case ErrorSettingState() when errorSavingState != null:
        return errorSavingState(_that.exception);
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
    required TResult Function() logoutState,
    required TResult Function() successfullySavingState,
    required TResult Function(Object? exception) errorSavingState,
  }) {
    final _that = this;
    switch (_that) {
      case InitialSettingState():
        return initial();
      case LogoutSettingState():
        return logoutState();
      case LoadedSettingState():
        return successfullySavingState();
      case ErrorSettingState():
        return errorSavingState(_that.exception);
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
    TResult? Function()? logoutState,
    TResult? Function()? successfullySavingState,
    TResult? Function(Object? exception)? errorSavingState,
  }) {
    final _that = this;
    switch (_that) {
      case InitialSettingState() when initial != null:
        return initial();
      case LogoutSettingState() when logoutState != null:
        return logoutState();
      case LoadedSettingState() when successfullySavingState != null:
        return successfullySavingState();
      case ErrorSettingState() when errorSavingState != null:
        return errorSavingState(_that.exception);
      case _:
        return null;
    }
  }
}

/// @nodoc

class InitialSettingState implements SettingState {
  const InitialSettingState();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InitialSettingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SettingState.initial()';
  }
}

/// @nodoc

class LogoutSettingState implements SettingState {
  const LogoutSettingState();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LogoutSettingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SettingState.logoutState()';
  }
}

/// @nodoc

class LoadedSettingState implements SettingState {
  const LoadedSettingState();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadedSettingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SettingState.successfullySavingState()';
  }
}

/// @nodoc

class ErrorSettingState implements SettingState {
  const ErrorSettingState({this.exception});

  final Object? exception;

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ErrorSettingStateCopyWith<ErrorSettingState> get copyWith =>
      _$ErrorSettingStateCopyWithImpl<ErrorSettingState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ErrorSettingState &&
            const DeepCollectionEquality().equals(other.exception, exception));
  }

  @override
  int get hashCode {
    return Object.hash(
        runtimeType, const DeepCollectionEquality().hash(exception));
  }

  @override
  String toString() {
    return 'SettingState.errorSavingState(exception: $exception)';
  }
}

/// @nodoc
abstract mixin class $ErrorSettingStateCopyWith<$Res>
    implements $SettingStateCopyWith<$Res> {
  factory $ErrorSettingStateCopyWith(
          ErrorSettingState value, $Res Function(ErrorSettingState) _then) =
      _$ErrorSettingStateCopyWithImpl;
  @useResult
  $Res call({Object? exception});
}

/// @nodoc
class _$ErrorSettingStateCopyWithImpl<$Res>
    implements $ErrorSettingStateCopyWith<$Res> {
  _$ErrorSettingStateCopyWithImpl(this._self, this._then);

  final ErrorSettingState _self;
  final $Res Function(ErrorSettingState) _then;

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(ErrorSettingState(
      exception: freezed == exception ? _self.exception : exception,
    ));
  }
}

// dart format on
