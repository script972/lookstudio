// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_request_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NetworkRequestBody {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NetworkRequestBody);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'NetworkRequestBody()';
  }
}

/// @nodoc
class $NetworkRequestBodyCopyWith<$Res> {
  $NetworkRequestBodyCopyWith(
      NetworkRequestBody _, $Res Function(NetworkRequestBody) __);
}

/// Adds pattern-matching-related methods to [NetworkRequestBody].
extension NetworkRequestBodyPatterns on NetworkRequestBody {
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
    TResult Function(Empty value)? empty,
    TResult Function(Json value)? json,
    TResult Function(Text value)? text,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case Empty() when empty != null:
        return empty(_that);
      case Json() when json != null:
        return json(_that);
      case Text() when text != null:
        return text(_that);
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
    required TResult Function(Empty value) empty,
    required TResult Function(Json value) json,
    required TResult Function(Text value) text,
  }) {
    final _that = this;
    switch (_that) {
      case Empty():
        return empty(_that);
      case Json():
        return json(_that);
      case Text():
        return text(_that);
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
    TResult? Function(Empty value)? empty,
    TResult? Function(Json value)? json,
    TResult? Function(Text value)? text,
  }) {
    final _that = this;
    switch (_that) {
      case Empty() when empty != null:
        return empty(_that);
      case Json() when json != null:
        return json(_that);
      case Text() when text != null:
        return text(_that);
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
    TResult Function()? empty,
    TResult Function(Map<String, dynamic> data)? json,
    TResult Function(String data)? text,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case Empty() when empty != null:
        return empty();
      case Json() when json != null:
        return json(_that.data);
      case Text() when text != null:
        return text(_that.data);
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
    required TResult Function() empty,
    required TResult Function(Map<String, dynamic> data) json,
    required TResult Function(String data) text,
  }) {
    final _that = this;
    switch (_that) {
      case Empty():
        return empty();
      case Json():
        return json(_that.data);
      case Text():
        return text(_that.data);
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
    TResult? Function()? empty,
    TResult? Function(Map<String, dynamic> data)? json,
    TResult? Function(String data)? text,
  }) {
    final _that = this;
    switch (_that) {
      case Empty() when empty != null:
        return empty();
      case Json() when json != null:
        return json(_that.data);
      case Text() when text != null:
        return text(_that.data);
      case _:
        return null;
    }
  }
}

/// @nodoc

class Empty implements NetworkRequestBody {
  const Empty();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Empty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'NetworkRequestBody.empty()';
  }
}

/// @nodoc

class Json implements NetworkRequestBody {
  const Json(Map<String, dynamic> data) : _data = data;

  final Map<String, dynamic> _data;
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  /// Create a copy of NetworkRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $JsonCopyWith<Json> get copyWith =>
      _$JsonCopyWithImpl<Json>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Json &&
            const DeepCollectionEquality().equals(other.data, _data));
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));
  }

  @override
  String toString() {
    return 'NetworkRequestBody.json(data: $data)';
  }
}

/// @nodoc
abstract mixin class $JsonCopyWith<$Res>
    implements $NetworkRequestBodyCopyWith<$Res> {
  factory $JsonCopyWith(Json value, $Res Function(Json) _then) =
      _$JsonCopyWithImpl;
  @useResult
  $Res call({Map<String, dynamic> data});
}

/// @nodoc
class _$JsonCopyWithImpl<$Res> implements $JsonCopyWith<$Res> {
  _$JsonCopyWithImpl(this._self, this._then);

  final Json _self;
  final $Res Function(Json) _then;

  /// Create a copy of NetworkRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(Json(
      null == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class Text implements NetworkRequestBody {
  const Text(this.data);

  final String data;

  /// Create a copy of NetworkRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TextCopyWith<Text> get copyWith =>
      _$TextCopyWithImpl<Text>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Text &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, data);
  }

  @override
  String toString() {
    return 'NetworkRequestBody.text(data: $data)';
  }
}

/// @nodoc
abstract mixin class $TextCopyWith<$Res>
    implements $NetworkRequestBodyCopyWith<$Res> {
  factory $TextCopyWith(Text value, $Res Function(Text) _then) =
      _$TextCopyWithImpl;
  @useResult
  $Res call({String data});
}

/// @nodoc
class _$TextCopyWithImpl<$Res> implements $TextCopyWith<$Res> {
  _$TextCopyWithImpl(this._self, this._then);

  final Text _self;
  final $Res Function(Text) _then;

  /// Create a copy of NetworkRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(Text(
      null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
