// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignUpState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SignUpState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SignUpState()';
  }
}

/// @nodoc
class $SignUpStateCopyWith<$Res> {
  $SignUpStateCopyWith(SignUpState _, $Res Function(SignUpState) __);
}

/// Adds pattern-matching-related methods to [SignUpState].
extension SignUpStatePatterns on SignUpState {
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
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessfullySignUpState value)? signUpped,
    TResult Function(_ValidationErrorState value)? validationError,
    TResult Function(_AuthErrorState value)? authError,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _InitialState() when initial != null:
        return initial(_that);
      case _LoadingState() when loading != null:
        return loading(_that);
      case _SuccessfullySignUpState() when signUpped != null:
        return signUpped(_that);
      case _ValidationErrorState() when validationError != null:
        return validationError(_that);
      case _AuthErrorState() when authError != null:
        return authError(_that);
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
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessfullySignUpState value) signUpped,
    required TResult Function(_ValidationErrorState value) validationError,
    required TResult Function(_AuthErrorState value) authError,
  }) {
    final _that = this;
    switch (_that) {
      case _InitialState():
        return initial(_that);
      case _LoadingState():
        return loading(_that);
      case _SuccessfullySignUpState():
        return signUpped(_that);
      case _ValidationErrorState():
        return validationError(_that);
      case _AuthErrorState():
        return authError(_that);
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
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessfullySignUpState value)? signUpped,
    TResult? Function(_ValidationErrorState value)? validationError,
    TResult? Function(_AuthErrorState value)? authError,
  }) {
    final _that = this;
    switch (_that) {
      case _InitialState() when initial != null:
        return initial(_that);
      case _LoadingState() when loading != null:
        return loading(_that);
      case _SuccessfullySignUpState() when signUpped != null:
        return signUpped(_that);
      case _ValidationErrorState() when validationError != null:
        return validationError(_that);
      case _AuthErrorState() when authError != null:
        return authError(_that);
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
    TResult Function()? signUpped,
    TResult Function(EmailError? emailError, PasswordError? passwordError)?
        validationError,
    TResult Function(AuthFailureType type)? authError,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _InitialState() when initial != null:
        return initial();
      case _LoadingState() when loading != null:
        return loading();
      case _SuccessfullySignUpState() when signUpped != null:
        return signUpped();
      case _ValidationErrorState() when validationError != null:
        return validationError(_that.emailError, _that.passwordError);
      case _AuthErrorState() when authError != null:
        return authError(_that.type);
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
    required TResult Function() signUpped,
    required TResult Function(
            EmailError? emailError, PasswordError? passwordError)
        validationError,
    required TResult Function(AuthFailureType type) authError,
  }) {
    final _that = this;
    switch (_that) {
      case _InitialState():
        return initial();
      case _LoadingState():
        return loading();
      case _SuccessfullySignUpState():
        return signUpped();
      case _ValidationErrorState():
        return validationError(_that.emailError, _that.passwordError);
      case _AuthErrorState():
        return authError(_that.type);
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
    TResult? Function()? signUpped,
    TResult? Function(EmailError? emailError, PasswordError? passwordError)?
        validationError,
    TResult? Function(AuthFailureType type)? authError,
  }) {
    final _that = this;
    switch (_that) {
      case _InitialState() when initial != null:
        return initial();
      case _LoadingState() when loading != null:
        return loading();
      case _SuccessfullySignUpState() when signUpped != null:
        return signUpped();
      case _ValidationErrorState() when validationError != null:
        return validationError(_that.emailError, _that.passwordError);
      case _AuthErrorState() when authError != null:
        return authError(_that.type);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _InitialState implements SignUpState {
  const _InitialState();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _InitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SignUpState.initial()';
  }
}

/// @nodoc

class _LoadingState implements SignUpState {
  const _LoadingState();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SignUpState.loading()';
  }
}

/// @nodoc

class _SuccessfullySignUpState implements SignUpState {
  const _SuccessfullySignUpState();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SuccessfullySignUpState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SignUpState.signUpped()';
  }
}

/// @nodoc

class _ValidationErrorState implements SignUpState {
  const _ValidationErrorState({this.emailError, this.passwordError});

  final EmailError? emailError;
  final PasswordError? passwordError;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ValidationErrorStateCopyWith<_ValidationErrorState> get copyWith =>
      __$ValidationErrorStateCopyWithImpl<_ValidationErrorState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ValidationErrorState &&
            (identical(other.emailError, emailError) ||
                other.emailError == emailError) &&
            (identical(other.passwordError, passwordError) ||
                other.passwordError == passwordError));
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, emailError, passwordError);
  }

  @override
  String toString() {
    return 'SignUpState.validationError(emailError: $emailError, passwordError: $passwordError)';
  }
}

/// @nodoc
abstract mixin class _$ValidationErrorStateCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$ValidationErrorStateCopyWith(_ValidationErrorState value,
          $Res Function(_ValidationErrorState) _then) =
      __$ValidationErrorStateCopyWithImpl;
  @useResult
  $Res call({EmailError? emailError, PasswordError? passwordError});
}

/// @nodoc
class __$ValidationErrorStateCopyWithImpl<$Res>
    implements _$ValidationErrorStateCopyWith<$Res> {
  __$ValidationErrorStateCopyWithImpl(this._self, this._then);

  final _ValidationErrorState _self;
  final $Res Function(_ValidationErrorState) _then;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? emailError = freezed,
    Object? passwordError = freezed,
  }) {
    return _then(_ValidationErrorState(
      emailError: freezed == emailError
          ? _self.emailError
          : emailError // ignore: cast_nullable_to_non_nullable
              as EmailError?,
      passwordError: freezed == passwordError
          ? _self.passwordError
          : passwordError // ignore: cast_nullable_to_non_nullable
              as PasswordError?,
    ));
  }
}

/// @nodoc

class _AuthErrorState implements SignUpState {
  const _AuthErrorState(this.type);

  final AuthFailureType type;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AuthErrorStateCopyWith<_AuthErrorState> get copyWith =>
      __$AuthErrorStateCopyWithImpl<_AuthErrorState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthErrorState &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, type);
  }

  @override
  String toString() {
    return 'SignUpState.authError(type: $type)';
  }
}

/// @nodoc
abstract mixin class _$AuthErrorStateCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$AuthErrorStateCopyWith(
          _AuthErrorState value, $Res Function(_AuthErrorState) _then) =
      __$AuthErrorStateCopyWithImpl;
  @useResult
  $Res call({AuthFailureType type});
}

/// @nodoc
class __$AuthErrorStateCopyWithImpl<$Res>
    implements _$AuthErrorStateCopyWith<$Res> {
  __$AuthErrorStateCopyWithImpl(this._self, this._then);

  final _AuthErrorState _self;
  final $Res Function(_AuthErrorState) _then;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
  }) {
    return _then(_AuthErrorState(
      null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as AuthFailureType,
    ));
  }
}

// dart format on
