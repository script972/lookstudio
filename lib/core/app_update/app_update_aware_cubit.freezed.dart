// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_update_aware_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppUpdateAwareState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AppUpdateAwareState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AppUpdateAwareState()';
  }
}

/// @nodoc
class $AppUpdateAwareStateCopyWith<$Res> {
  $AppUpdateAwareStateCopyWith(
      AppUpdateAwareState _, $Res Function(AppUpdateAwareState) __);
}

/// Adds pattern-matching-related methods to [AppUpdateAwareState].
extension AppUpdateAwareStatePatterns on AppUpdateAwareState {
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
    TResult Function(HardUpdateRequired value)? hardUpdateRequired,
    TResult Function(SoftUpdateAvailable value)? softUpdateAvailable,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case Initial() when initial != null:
        return initial(_that);
      case HardUpdateRequired() when hardUpdateRequired != null:
        return hardUpdateRequired(_that);
      case SoftUpdateAvailable() when softUpdateAvailable != null:
        return softUpdateAvailable(_that);
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
    required TResult Function(HardUpdateRequired value) hardUpdateRequired,
    required TResult Function(SoftUpdateAvailable value) softUpdateAvailable,
  }) {
    final _that = this;
    switch (_that) {
      case Initial():
        return initial(_that);
      case HardUpdateRequired():
        return hardUpdateRequired(_that);
      case SoftUpdateAvailable():
        return softUpdateAvailable(_that);
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
    TResult? Function(HardUpdateRequired value)? hardUpdateRequired,
    TResult? Function(SoftUpdateAvailable value)? softUpdateAvailable,
  }) {
    final _that = this;
    switch (_that) {
      case Initial() when initial != null:
        return initial(_that);
      case HardUpdateRequired() when hardUpdateRequired != null:
        return hardUpdateRequired(_that);
      case SoftUpdateAvailable() when softUpdateAvailable != null:
        return softUpdateAvailable(_that);
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
    TResult Function()? hardUpdateRequired,
    TResult Function()? softUpdateAvailable,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case Initial() when initial != null:
        return initial();
      case HardUpdateRequired() when hardUpdateRequired != null:
        return hardUpdateRequired();
      case SoftUpdateAvailable() when softUpdateAvailable != null:
        return softUpdateAvailable();
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
    required TResult Function() hardUpdateRequired,
    required TResult Function() softUpdateAvailable,
  }) {
    final _that = this;
    switch (_that) {
      case Initial():
        return initial();
      case HardUpdateRequired():
        return hardUpdateRequired();
      case SoftUpdateAvailable():
        return softUpdateAvailable();
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
    TResult? Function()? hardUpdateRequired,
    TResult? Function()? softUpdateAvailable,
  }) {
    final _that = this;
    switch (_that) {
      case Initial() when initial != null:
        return initial();
      case HardUpdateRequired() when hardUpdateRequired != null:
        return hardUpdateRequired();
      case SoftUpdateAvailable() when softUpdateAvailable != null:
        return softUpdateAvailable();
      case _:
        return null;
    }
  }
}

/// @nodoc

class Initial implements AppUpdateAwareState {
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
    return 'AppUpdateAwareState.initial()';
  }
}

/// @nodoc

class HardUpdateRequired implements AppUpdateAwareState {
  const HardUpdateRequired();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HardUpdateRequired);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AppUpdateAwareState.hardUpdateRequired()';
  }
}

/// @nodoc

class SoftUpdateAvailable implements AppUpdateAwareState {
  const SoftUpdateAvailable();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SoftUpdateAvailable);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AppUpdateAwareState.softUpdateAvailable()';
  }
}

// dart format on
