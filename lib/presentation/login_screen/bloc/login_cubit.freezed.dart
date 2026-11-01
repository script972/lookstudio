// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoginState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginState()';
  }
}

/// @nodoc
class $LoginStateCopyWith<$Res> {
  $LoginStateCopyWith(LoginState _, $Res Function(LoginState) __);
}

/// Adds pattern-matching-related methods to [LoginState].
extension LoginStatePatterns on LoginState {
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
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SuccessfullyLogin value)? successfullyLogin,
    TResult Function(ValidationError value)? validationError,
    TResult Function(AuthError value)? authError,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case Initial() when initial != null:
        return initial(_that);
      case Loading() when loading != null:
        return loading(_that);
      case SuccessfullyLogin() when successfullyLogin != null:
        return successfullyLogin(_that);
      case ValidationError() when validationError != null:
        return validationError(_that);
      case AuthError() when authError != null:
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
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(SuccessfullyLogin value) successfullyLogin,
    required TResult Function(ValidationError value) validationError,
    required TResult Function(AuthError value) authError,
  }) {
    final _that = this;
    switch (_that) {
      case Initial():
        return initial(_that);
      case Loading():
        return loading(_that);
      case SuccessfullyLogin():
        return successfullyLogin(_that);
      case ValidationError():
        return validationError(_that);
      case AuthError():
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
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(SuccessfullyLogin value)? successfullyLogin,
    TResult? Function(ValidationError value)? validationError,
    TResult? Function(AuthError value)? authError,
  }) {
    final _that = this;
    switch (_that) {
      case Initial() when initial != null:
        return initial(_that);
      case Loading() when loading != null:
        return loading(_that);
      case SuccessfullyLogin() when successfullyLogin != null:
        return successfullyLogin(_that);
      case ValidationError() when validationError != null:
        return validationError(_that);
      case AuthError() when authError != null:
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
    TResult Function()? successfullyLogin,
    TResult Function(EmailError? emailError, PasswordError? passwordError)?
        validationError,
    TResult Function(AuthFailureType type)? authError,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case Initial() when initial != null:
        return initial();
      case Loading() when loading != null:
        return loading();
      case SuccessfullyLogin() when successfullyLogin != null:
        return successfullyLogin();
      case ValidationError() when validationError != null:
        return validationError(_that.emailError, _that.passwordError);
      case AuthError() when authError != null:
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
    required TResult Function() successfullyLogin,
    required TResult Function(
            EmailError? emailError, PasswordError? passwordError)
        validationError,
    required TResult Function(AuthFailureType type) authError,
  }) {
    final _that = this;
    switch (_that) {
      case Initial():
        return initial();
      case Loading():
        return loading();
      case SuccessfullyLogin():
        return successfullyLogin();
      case ValidationError():
        return validationError(_that.emailError, _that.passwordError);
      case AuthError():
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
    TResult? Function()? successfullyLogin,
    TResult? Function(EmailError? emailError, PasswordError? passwordError)?
        validationError,
    TResult? Function(AuthFailureType type)? authError,
  }) {
    final _that = this;
    switch (_that) {
      case Initial() when initial != null:
        return initial();
      case Loading() when loading != null:
        return loading();
      case SuccessfullyLogin() when successfullyLogin != null:
        return successfullyLogin();
      case ValidationError() when validationError != null:
        return validationError(_that.emailError, _that.passwordError);
      case AuthError() when authError != null:
        return authError(_that.type);
      case _:
        return null;
    }
  }
}

/// @nodoc

class Initial implements LoginState {
  const Initial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginState.initial()';
  }
}

/// @nodoc

class Loading implements LoginState {
  const Loading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginState.loading()';
  }
}

/// @nodoc

class SuccessfullyLogin implements LoginState {
  const SuccessfullyLogin();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SuccessfullyLogin);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginState.successfullyLogin()';
  }
}

/// @nodoc

class ValidationError implements LoginState {
  const ValidationError({this.emailError, this.passwordError});

  final EmailError? emailError;
  final PasswordError? passwordError;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ValidationErrorCopyWith<ValidationError> get copyWith =>
      _$ValidationErrorCopyWithImpl<ValidationError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ValidationError &&
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
    return 'LoginState.validationError(emailError: $emailError, passwordError: $passwordError)';
  }
}

/// @nodoc
abstract mixin class $ValidationErrorCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory $ValidationErrorCopyWith(
          ValidationError value, $Res Function(ValidationError) _then) =
      _$ValidationErrorCopyWithImpl;
  @useResult
  $Res call({EmailError? emailError, PasswordError? passwordError});
}

/// @nodoc
class _$ValidationErrorCopyWithImpl<$Res>
    implements $ValidationErrorCopyWith<$Res> {
  _$ValidationErrorCopyWithImpl(this._self, this._then);

  final ValidationError _self;
  final $Res Function(ValidationError) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? emailError = freezed,
    Object? passwordError = freezed,
  }) {
    return _then(ValidationError(
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

class AuthError implements LoginState {
  const AuthError(this.type);

  final AuthFailureType type;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthErrorCopyWith<AuthError> get copyWith =>
      _$AuthErrorCopyWithImpl<AuthError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthError &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, type);
  }

  @override
  String toString() {
    return 'LoginState.authError(type: $type)';
  }
}

/// @nodoc
abstract mixin class $AuthErrorCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory $AuthErrorCopyWith(AuthError value, $Res Function(AuthError) _then) =
      _$AuthErrorCopyWithImpl;
  @useResult
  $Res call({AuthFailureType type});
}

/// @nodoc
class _$AuthErrorCopyWithImpl<$Res> implements $AuthErrorCopyWith<$Res> {
  _$AuthErrorCopyWithImpl(this._self, this._then);

  final AuthError _self;
  final $Res Function(AuthError) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
  }) {
    return _then(AuthError(
      null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as AuthFailureType,
    ));
  }
}

// dart format on
