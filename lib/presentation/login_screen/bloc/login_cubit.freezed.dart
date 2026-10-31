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
    TResult Function(UnknownError value)? unknownError,
    TResult Function(FieldIsEmptyError value)? fieldIsEmptyError,
    TResult Function(WrongCredentials value)? wrongCredentialsError,
    TResult Function(EmailNotVerified value)? emailNotVerified,
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
      case UnknownError() when unknownError != null:
        return unknownError(_that);
      case FieldIsEmptyError() when fieldIsEmptyError != null:
        return fieldIsEmptyError(_that);
      case WrongCredentials() when wrongCredentialsError != null:
        return wrongCredentialsError(_that);
      case EmailNotVerified() when emailNotVerified != null:
        return emailNotVerified(_that);
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
    required TResult Function(UnknownError value) unknownError,
    required TResult Function(FieldIsEmptyError value) fieldIsEmptyError,
    required TResult Function(WrongCredentials value) wrongCredentialsError,
    required TResult Function(EmailNotVerified value) emailNotVerified,
  }) {
    final _that = this;
    switch (_that) {
      case Initial():
        return initial(_that);
      case Loading():
        return loading(_that);
      case SuccessfullyLogin():
        return successfullyLogin(_that);
      case UnknownError():
        return unknownError(_that);
      case FieldIsEmptyError():
        return fieldIsEmptyError(_that);
      case WrongCredentials():
        return wrongCredentialsError(_that);
      case EmailNotVerified():
        return emailNotVerified(_that);
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
    TResult? Function(UnknownError value)? unknownError,
    TResult? Function(FieldIsEmptyError value)? fieldIsEmptyError,
    TResult? Function(WrongCredentials value)? wrongCredentialsError,
    TResult? Function(EmailNotVerified value)? emailNotVerified,
  }) {
    final _that = this;
    switch (_that) {
      case Initial() when initial != null:
        return initial(_that);
      case Loading() when loading != null:
        return loading(_that);
      case SuccessfullyLogin() when successfullyLogin != null:
        return successfullyLogin(_that);
      case UnknownError() when unknownError != null:
        return unknownError(_that);
      case FieldIsEmptyError() when fieldIsEmptyError != null:
        return fieldIsEmptyError(_that);
      case WrongCredentials() when wrongCredentialsError != null:
        return wrongCredentialsError(_that);
      case EmailNotVerified() when emailNotVerified != null:
        return emailNotVerified(_that);
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
    TResult Function(String? message, VoidCallback retryCallback)? unknownError,
    TResult Function(bool isUsernameEmpty, bool isPasswordEmpty)?
        fieldIsEmptyError,
    TResult Function()? wrongCredentialsError,
    TResult Function(String username, String password)? emailNotVerified,
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
      case UnknownError() when unknownError != null:
        return unknownError(_that.message, _that.retryCallback);
      case FieldIsEmptyError() when fieldIsEmptyError != null:
        return fieldIsEmptyError(_that.isUsernameEmpty, _that.isPasswordEmpty);
      case WrongCredentials() when wrongCredentialsError != null:
        return wrongCredentialsError();
      case EmailNotVerified() when emailNotVerified != null:
        return emailNotVerified(_that.username, _that.password);
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
    required TResult Function(String? message, VoidCallback retryCallback)
        unknownError,
    required TResult Function(bool isUsernameEmpty, bool isPasswordEmpty)
        fieldIsEmptyError,
    required TResult Function() wrongCredentialsError,
    required TResult Function(String username, String password)
        emailNotVerified,
  }) {
    final _that = this;
    switch (_that) {
      case Initial():
        return initial();
      case Loading():
        return loading();
      case SuccessfullyLogin():
        return successfullyLogin();
      case UnknownError():
        return unknownError(_that.message, _that.retryCallback);
      case FieldIsEmptyError():
        return fieldIsEmptyError(_that.isUsernameEmpty, _that.isPasswordEmpty);
      case WrongCredentials():
        return wrongCredentialsError();
      case EmailNotVerified():
        return emailNotVerified(_that.username, _that.password);
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
    TResult? Function(String? message, VoidCallback retryCallback)?
        unknownError,
    TResult? Function(bool isUsernameEmpty, bool isPasswordEmpty)?
        fieldIsEmptyError,
    TResult? Function()? wrongCredentialsError,
    TResult? Function(String username, String password)? emailNotVerified,
  }) {
    final _that = this;
    switch (_that) {
      case Initial() when initial != null:
        return initial();
      case Loading() when loading != null:
        return loading();
      case SuccessfullyLogin() when successfullyLogin != null:
        return successfullyLogin();
      case UnknownError() when unknownError != null:
        return unknownError(_that.message, _that.retryCallback);
      case FieldIsEmptyError() when fieldIsEmptyError != null:
        return fieldIsEmptyError(_that.isUsernameEmpty, _that.isPasswordEmpty);
      case WrongCredentials() when wrongCredentialsError != null:
        return wrongCredentialsError();
      case EmailNotVerified() when emailNotVerified != null:
        return emailNotVerified(_that.username, _that.password);
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

class UnknownError implements LoginState {
  const UnknownError({this.message, required this.retryCallback});

  final String? message;
  final VoidCallback retryCallback;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UnknownErrorCopyWith<UnknownError> get copyWith =>
      _$UnknownErrorCopyWithImpl<UnknownError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UnknownError &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.retryCallback, retryCallback) ||
                other.retryCallback == retryCallback));
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, message, retryCallback);
  }

  @override
  String toString() {
    return 'LoginState.unknownError(message: $message, retryCallback: $retryCallback)';
  }
}

/// @nodoc
abstract mixin class $UnknownErrorCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory $UnknownErrorCopyWith(
          UnknownError value, $Res Function(UnknownError) _then) =
      _$UnknownErrorCopyWithImpl;
  @useResult
  $Res call({String? message, VoidCallback retryCallback});
}

/// @nodoc
class _$UnknownErrorCopyWithImpl<$Res> implements $UnknownErrorCopyWith<$Res> {
  _$UnknownErrorCopyWithImpl(this._self, this._then);

  final UnknownError _self;
  final $Res Function(UnknownError) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = freezed,
    Object? retryCallback = null,
  }) {
    return _then(UnknownError(
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      retryCallback: null == retryCallback
          ? _self.retryCallback
          : retryCallback // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }
}

/// @nodoc

class FieldIsEmptyError implements LoginState {
  const FieldIsEmptyError(
      {this.isUsernameEmpty = false, this.isPasswordEmpty = false});

  @JsonKey()
  final bool isUsernameEmpty;
  @JsonKey()
  final bool isPasswordEmpty;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FieldIsEmptyErrorCopyWith<FieldIsEmptyError> get copyWith =>
      _$FieldIsEmptyErrorCopyWithImpl<FieldIsEmptyError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FieldIsEmptyError &&
            (identical(other.isUsernameEmpty, isUsernameEmpty) ||
                other.isUsernameEmpty == isUsernameEmpty) &&
            (identical(other.isPasswordEmpty, isPasswordEmpty) ||
                other.isPasswordEmpty == isPasswordEmpty));
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, isUsernameEmpty, isPasswordEmpty);
  }

  @override
  String toString() {
    return 'LoginState.fieldIsEmptyError(isUsernameEmpty: $isUsernameEmpty, isPasswordEmpty: $isPasswordEmpty)';
  }
}

/// @nodoc
abstract mixin class $FieldIsEmptyErrorCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory $FieldIsEmptyErrorCopyWith(
          FieldIsEmptyError value, $Res Function(FieldIsEmptyError) _then) =
      _$FieldIsEmptyErrorCopyWithImpl;
  @useResult
  $Res call({bool isUsernameEmpty, bool isPasswordEmpty});
}

/// @nodoc
class _$FieldIsEmptyErrorCopyWithImpl<$Res>
    implements $FieldIsEmptyErrorCopyWith<$Res> {
  _$FieldIsEmptyErrorCopyWithImpl(this._self, this._then);

  final FieldIsEmptyError _self;
  final $Res Function(FieldIsEmptyError) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isUsernameEmpty = null,
    Object? isPasswordEmpty = null,
  }) {
    return _then(FieldIsEmptyError(
      isUsernameEmpty: null == isUsernameEmpty
          ? _self.isUsernameEmpty
          : isUsernameEmpty // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordEmpty: null == isPasswordEmpty
          ? _self.isPasswordEmpty
          : isPasswordEmpty // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class WrongCredentials implements LoginState {
  const WrongCredentials();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is WrongCredentials);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginState.wrongCredentialsError()';
  }
}

/// @nodoc

class EmailNotVerified implements LoginState {
  const EmailNotVerified({required this.username, required this.password});

  final String username;
  final String password;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EmailNotVerifiedCopyWith<EmailNotVerified> get copyWith =>
      _$EmailNotVerifiedCopyWithImpl<EmailNotVerified>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EmailNotVerified &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, username, password);
  }

  @override
  String toString() {
    return 'LoginState.emailNotVerified(username: $username, password: $password)';
  }
}

/// @nodoc
abstract mixin class $EmailNotVerifiedCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory $EmailNotVerifiedCopyWith(
          EmailNotVerified value, $Res Function(EmailNotVerified) _then) =
      _$EmailNotVerifiedCopyWithImpl;
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class _$EmailNotVerifiedCopyWithImpl<$Res>
    implements $EmailNotVerifiedCopyWith<$Res> {
  _$EmailNotVerifiedCopyWithImpl(this._self, this._then);

  final EmailNotVerified _self;
  final $Res Function(EmailNotVerified) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(EmailNotVerified(
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
