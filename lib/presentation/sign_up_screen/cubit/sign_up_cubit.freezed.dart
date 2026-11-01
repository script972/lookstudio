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
    TResult Function(SignUpInitial value)? initial,
    TResult Function(SignUpLoading value)? loading,
    TResult Function(SignUpSuccess value)? signUpped,
    TResult Function(SignUpValidationError value)? validationError,
    TResult Function(SignUpAuthError value)? authError,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case SignUpInitial() when initial != null:
        return initial(_that);
      case SignUpLoading() when loading != null:
        return loading(_that);
      case SignUpSuccess() when signUpped != null:
        return signUpped(_that);
      case SignUpValidationError() when validationError != null:
        return validationError(_that);
      case SignUpAuthError() when authError != null:
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
    required TResult Function(SignUpInitial value) initial,
    required TResult Function(SignUpLoading value) loading,
    required TResult Function(SignUpSuccess value) signUpped,
    required TResult Function(SignUpValidationError value) validationError,
    required TResult Function(SignUpAuthError value) authError,
  }) {
    final _that = this;
    switch (_that) {
      case SignUpInitial():
        return initial(_that);
      case SignUpLoading():
        return loading(_that);
      case SignUpSuccess():
        return signUpped(_that);
      case SignUpValidationError():
        return validationError(_that);
      case SignUpAuthError():
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
    TResult? Function(SignUpInitial value)? initial,
    TResult? Function(SignUpLoading value)? loading,
    TResult? Function(SignUpSuccess value)? signUpped,
    TResult? Function(SignUpValidationError value)? validationError,
    TResult? Function(SignUpAuthError value)? authError,
  }) {
    final _that = this;
    switch (_that) {
      case SignUpInitial() when initial != null:
        return initial(_that);
      case SignUpLoading() when loading != null:
        return loading(_that);
      case SignUpSuccess() when signUpped != null:
        return signUpped(_that);
      case SignUpValidationError() when validationError != null:
        return validationError(_that);
      case SignUpAuthError() when authError != null:
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
      case SignUpInitial() when initial != null:
        return initial();
      case SignUpLoading() when loading != null:
        return loading();
      case SignUpSuccess() when signUpped != null:
        return signUpped();
      case SignUpValidationError() when validationError != null:
        return validationError(_that.emailError, _that.passwordError);
      case SignUpAuthError() when authError != null:
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
      case SignUpInitial():
        return initial();
      case SignUpLoading():
        return loading();
      case SignUpSuccess():
        return signUpped();
      case SignUpValidationError():
        return validationError(_that.emailError, _that.passwordError);
      case SignUpAuthError():
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
      case SignUpInitial() when initial != null:
        return initial();
      case SignUpLoading() when loading != null:
        return loading();
      case SignUpSuccess() when signUpped != null:
        return signUpped();
      case SignUpValidationError() when validationError != null:
        return validationError(_that.emailError, _that.passwordError);
      case SignUpAuthError() when authError != null:
        return authError(_that.type);
      case _:
        return null;
    }
  }
}

/// @nodoc

class SignUpInitial implements SignUpState {
  const SignUpInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SignUpInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SignUpState.initial()';
  }
}

/// @nodoc

class SignUpLoading implements SignUpState {
  const SignUpLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SignUpLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SignUpState.loading()';
  }
}

/// @nodoc

class SignUpSuccess implements SignUpState {
  const SignUpSuccess();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SignUpSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SignUpState.signUpped()';
  }
}

/// @nodoc

class SignUpValidationError implements SignUpState {
  const SignUpValidationError({this.emailError, this.passwordError});

  final EmailError? emailError;
  final PasswordError? passwordError;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SignUpValidationErrorCopyWith<SignUpValidationError> get copyWith =>
      _$SignUpValidationErrorCopyWithImpl<SignUpValidationError>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignUpValidationError &&
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
abstract mixin class $SignUpValidationErrorCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory $SignUpValidationErrorCopyWith(SignUpValidationError value,
          $Res Function(SignUpValidationError) _then) =
      _$SignUpValidationErrorCopyWithImpl;
  @useResult
  $Res call({EmailError? emailError, PasswordError? passwordError});
}

/// @nodoc
class _$SignUpValidationErrorCopyWithImpl<$Res>
    implements $SignUpValidationErrorCopyWith<$Res> {
  _$SignUpValidationErrorCopyWithImpl(this._self, this._then);

  final SignUpValidationError _self;
  final $Res Function(SignUpValidationError) _then;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? emailError = freezed,
    Object? passwordError = freezed,
  }) {
    return _then(SignUpValidationError(
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

class SignUpAuthError implements SignUpState {
  const SignUpAuthError(this.type);

  final AuthFailureType type;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SignUpAuthErrorCopyWith<SignUpAuthError> get copyWith =>
      _$SignUpAuthErrorCopyWithImpl<SignUpAuthError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignUpAuthError &&
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
abstract mixin class $SignUpAuthErrorCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory $SignUpAuthErrorCopyWith(
          SignUpAuthError value, $Res Function(SignUpAuthError) _then) =
      _$SignUpAuthErrorCopyWithImpl;
  @useResult
  $Res call({AuthFailureType type});
}

/// @nodoc
class _$SignUpAuthErrorCopyWithImpl<$Res>
    implements $SignUpAuthErrorCopyWith<$Res> {
  _$SignUpAuthErrorCopyWithImpl(this._self, this._then);

  final SignUpAuthError _self;
  final $Res Function(SignUpAuthError) _then;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
  }) {
    return _then(SignUpAuthError(
      null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as AuthFailureType,
    ));
  }
}

// dart format on
