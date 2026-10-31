// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'breeds_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BreedsEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BreedsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BreedsEvent()';
  }
}

/// @nodoc
class $BreedsEventCopyWith<$Res> {
  $BreedsEventCopyWith(BreedsEvent _, $Res Function(BreedsEvent) __);
}

/// Adds pattern-matching-related methods to [BreedsEvent].
extension BreedsEventPatterns on BreedsEvent {
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
    TResult Function(LoadedEvent value)? loaded,
    TResult Function(LoadingEvent value)? loading,
    TResult Function(RefreshEvent value)? refresh,
    TResult Function(ShowInfoEvent value)? showInfo,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case LoadedEvent() when loaded != null:
        return loaded(_that);
      case LoadingEvent() when loading != null:
        return loading(_that);
      case RefreshEvent() when refresh != null:
        return refresh(_that);
      case ShowInfoEvent() when showInfo != null:
        return showInfo(_that);
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
    required TResult Function(LoadedEvent value) loaded,
    required TResult Function(LoadingEvent value) loading,
    required TResult Function(RefreshEvent value) refresh,
    required TResult Function(ShowInfoEvent value) showInfo,
  }) {
    final _that = this;
    switch (_that) {
      case LoadedEvent():
        return loaded(_that);
      case LoadingEvent():
        return loading(_that);
      case RefreshEvent():
        return refresh(_that);
      case ShowInfoEvent():
        return showInfo(_that);
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
    TResult? Function(LoadedEvent value)? loaded,
    TResult? Function(LoadingEvent value)? loading,
    TResult? Function(RefreshEvent value)? refresh,
    TResult? Function(ShowInfoEvent value)? showInfo,
  }) {
    final _that = this;
    switch (_that) {
      case LoadedEvent() when loaded != null:
        return loaded(_that);
      case LoadingEvent() when loading != null:
        return loading(_that);
      case RefreshEvent() when refresh != null:
        return refresh(_that);
      case ShowInfoEvent() when showInfo != null:
        return showInfo(_that);
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
    TResult Function()? loaded,
    TResult Function()? loading,
    TResult Function()? refresh,
    TResult Function(BreedInfo breedInfo)? showInfo,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case LoadedEvent() when loaded != null:
        return loaded();
      case LoadingEvent() when loading != null:
        return loading();
      case RefreshEvent() when refresh != null:
        return refresh();
      case ShowInfoEvent() when showInfo != null:
        return showInfo(_that.breedInfo);
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
    required TResult Function() loaded,
    required TResult Function() loading,
    required TResult Function() refresh,
    required TResult Function(BreedInfo breedInfo) showInfo,
  }) {
    final _that = this;
    switch (_that) {
      case LoadedEvent():
        return loaded();
      case LoadingEvent():
        return loading();
      case RefreshEvent():
        return refresh();
      case ShowInfoEvent():
        return showInfo(_that.breedInfo);
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
    TResult? Function()? loaded,
    TResult? Function()? loading,
    TResult? Function()? refresh,
    TResult? Function(BreedInfo breedInfo)? showInfo,
  }) {
    final _that = this;
    switch (_that) {
      case LoadedEvent() when loaded != null:
        return loaded();
      case LoadingEvent() when loading != null:
        return loading();
      case RefreshEvent() when refresh != null:
        return refresh();
      case ShowInfoEvent() when showInfo != null:
        return showInfo(_that.breedInfo);
      case _:
        return null;
    }
  }
}

/// @nodoc

class LoadedEvent implements BreedsEvent {
  const LoadedEvent();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BreedsEvent.loaded()';
  }
}

/// @nodoc

class LoadingEvent implements BreedsEvent {
  const LoadingEvent();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadingEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BreedsEvent.loading()';
  }
}

/// @nodoc

class RefreshEvent implements BreedsEvent {
  const RefreshEvent();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RefreshEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BreedsEvent.refresh()';
  }
}

/// @nodoc

class ShowInfoEvent implements BreedsEvent {
  const ShowInfoEvent({required this.breedInfo});

  final BreedInfo breedInfo;

  /// Create a copy of BreedsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ShowInfoEventCopyWith<ShowInfoEvent> get copyWith =>
      _$ShowInfoEventCopyWithImpl<ShowInfoEvent>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShowInfoEvent &&
            (identical(other.breedInfo, breedInfo) ||
                other.breedInfo == breedInfo));
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, breedInfo);
  }

  @override
  String toString() {
    return 'BreedsEvent.showInfo(breedInfo: $breedInfo)';
  }
}

/// @nodoc
abstract mixin class $ShowInfoEventCopyWith<$Res>
    implements $BreedsEventCopyWith<$Res> {
  factory $ShowInfoEventCopyWith(
          ShowInfoEvent value, $Res Function(ShowInfoEvent) _then) =
      _$ShowInfoEventCopyWithImpl;
  @useResult
  $Res call({BreedInfo breedInfo});
}

/// @nodoc
class _$ShowInfoEventCopyWithImpl<$Res>
    implements $ShowInfoEventCopyWith<$Res> {
  _$ShowInfoEventCopyWithImpl(this._self, this._then);

  final ShowInfoEvent _self;
  final $Res Function(ShowInfoEvent) _then;

  /// Create a copy of BreedsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? breedInfo = null,
  }) {
    return _then(ShowInfoEvent(
      breedInfo: null == breedInfo
          ? _self.breedInfo
          : breedInfo // ignore: cast_nullable_to_non_nullable
              as BreedInfo,
    ));
  }
}

/// @nodoc
mixin _$BreedsState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BreedsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BreedsState()';
  }
}

/// @nodoc
class $BreedsStateCopyWith<$Res> {
  $BreedsStateCopyWith(BreedsState _, $Res Function(BreedsState) __);
}

/// Adds pattern-matching-related methods to [BreedsState].
extension BreedsStatePatterns on BreedsState {
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
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_ShowInfo value)? showInfo,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _InitialState() when initial != null:
        return initial(_that);
      case _LoadingState() when loading != null:
        return loading(_that);
      case _LoadedState() when loaded != null:
        return loaded(_that);
      case _ShowInfo() when showInfo != null:
        return showInfo(_that);
      case _ErrorState() when error != null:
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
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_ShowInfo value) showInfo,
    required TResult Function(_ErrorState value) error,
  }) {
    final _that = this;
    switch (_that) {
      case _InitialState():
        return initial(_that);
      case _LoadingState():
        return loading(_that);
      case _LoadedState():
        return loaded(_that);
      case _ShowInfo():
        return showInfo(_that);
      case _ErrorState():
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
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_ShowInfo value)? showInfo,
    TResult? Function(_ErrorState value)? error,
  }) {
    final _that = this;
    switch (_that) {
      case _InitialState() when initial != null:
        return initial(_that);
      case _LoadingState() when loading != null:
        return loading(_that);
      case _LoadedState() when loaded != null:
        return loaded(_that);
      case _ShowInfo() when showInfo != null:
        return showInfo(_that);
      case _ErrorState() when error != null:
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
    TResult Function(List<BreedInfo> fetchedDogs)? loaded,
    TResult Function(BreedInfo breedInfo, List<BreedInfo> fetchedDogs)?
        showInfo,
    TResult Function(Object? exception, List<BreedInfo> fetchedDogs)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _InitialState() when initial != null:
        return initial();
      case _LoadingState() when loading != null:
        return loading();
      case _LoadedState() when loaded != null:
        return loaded(_that.fetchedDogs);
      case _ShowInfo() when showInfo != null:
        return showInfo(_that.breedInfo, _that.fetchedDogs);
      case _ErrorState() when error != null:
        return error(_that.exception, _that.fetchedDogs);
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
    required TResult Function(List<BreedInfo> fetchedDogs) loaded,
    required TResult Function(BreedInfo breedInfo, List<BreedInfo> fetchedDogs)
        showInfo,
    required TResult Function(Object? exception, List<BreedInfo> fetchedDogs)
        error,
  }) {
    final _that = this;
    switch (_that) {
      case _InitialState():
        return initial();
      case _LoadingState():
        return loading();
      case _LoadedState():
        return loaded(_that.fetchedDogs);
      case _ShowInfo():
        return showInfo(_that.breedInfo, _that.fetchedDogs);
      case _ErrorState():
        return error(_that.exception, _that.fetchedDogs);
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
    TResult? Function(List<BreedInfo> fetchedDogs)? loaded,
    TResult? Function(BreedInfo breedInfo, List<BreedInfo> fetchedDogs)?
        showInfo,
    TResult? Function(Object? exception, List<BreedInfo> fetchedDogs)? error,
  }) {
    final _that = this;
    switch (_that) {
      case _InitialState() when initial != null:
        return initial();
      case _LoadingState() when loading != null:
        return loading();
      case _LoadedState() when loaded != null:
        return loaded(_that.fetchedDogs);
      case _ShowInfo() when showInfo != null:
        return showInfo(_that.breedInfo, _that.fetchedDogs);
      case _ErrorState() when error != null:
        return error(_that.exception, _that.fetchedDogs);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _InitialState implements BreedsState {
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
    return 'BreedsState.initial()';
  }
}

/// @nodoc

class _LoadingState implements BreedsState {
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
    return 'BreedsState.loading()';
  }
}

/// @nodoc

class _LoadedState implements BreedsState {
  const _LoadedState({required List<BreedInfo> fetchedDogs})
      : _fetchedDogs = fetchedDogs;

  final List<BreedInfo> _fetchedDogs;
  List<BreedInfo> get fetchedDogs {
    if (_fetchedDogs is EqualUnmodifiableListView) return _fetchedDogs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fetchedDogs);
  }

  /// Create a copy of BreedsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LoadedStateCopyWith<_LoadedState> get copyWith =>
      __$LoadedStateCopyWithImpl<_LoadedState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadedState &&
            const DeepCollectionEquality()
                .equals(other.fetchedDogs, _fetchedDogs));
  }

  @override
  int get hashCode {
    return Object.hash(
        runtimeType, const DeepCollectionEquality().hash(_fetchedDogs));
  }

  @override
  String toString() {
    return 'BreedsState.loaded(fetchedDogs: $fetchedDogs)';
  }
}

/// @nodoc
abstract mixin class _$LoadedStateCopyWith<$Res>
    implements $BreedsStateCopyWith<$Res> {
  factory _$LoadedStateCopyWith(
          _LoadedState value, $Res Function(_LoadedState) _then) =
      __$LoadedStateCopyWithImpl;
  @useResult
  $Res call({List<BreedInfo> fetchedDogs});
}

/// @nodoc
class __$LoadedStateCopyWithImpl<$Res> implements _$LoadedStateCopyWith<$Res> {
  __$LoadedStateCopyWithImpl(this._self, this._then);

  final _LoadedState _self;
  final $Res Function(_LoadedState) _then;

  /// Create a copy of BreedsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fetchedDogs = null,
  }) {
    return _then(_LoadedState(
      fetchedDogs: null == fetchedDogs
          ? _self._fetchedDogs
          : fetchedDogs // ignore: cast_nullable_to_non_nullable
              as List<BreedInfo>,
    ));
  }
}

/// @nodoc

class _ShowInfo implements BreedsState {
  const _ShowInfo(
      {required this.breedInfo, required List<BreedInfo> fetchedDogs})
      : _fetchedDogs = fetchedDogs;

  final BreedInfo breedInfo;
  final List<BreedInfo> _fetchedDogs;
  List<BreedInfo> get fetchedDogs {
    if (_fetchedDogs is EqualUnmodifiableListView) return _fetchedDogs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fetchedDogs);
  }

  /// Create a copy of BreedsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ShowInfoCopyWith<_ShowInfo> get copyWith =>
      __$ShowInfoCopyWithImpl<_ShowInfo>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShowInfo &&
            (identical(other.breedInfo, breedInfo) ||
                other.breedInfo == breedInfo) &&
            const DeepCollectionEquality()
                .equals(other.fetchedDogs, _fetchedDogs));
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, breedInfo,
        const DeepCollectionEquality().hash(_fetchedDogs));
  }

  @override
  String toString() {
    return 'BreedsState.showInfo(breedInfo: $breedInfo, fetchedDogs: $fetchedDogs)';
  }
}

/// @nodoc
abstract mixin class _$ShowInfoCopyWith<$Res>
    implements $BreedsStateCopyWith<$Res> {
  factory _$ShowInfoCopyWith(_ShowInfo value, $Res Function(_ShowInfo) _then) =
      __$ShowInfoCopyWithImpl;
  @useResult
  $Res call({BreedInfo breedInfo, List<BreedInfo> fetchedDogs});
}

/// @nodoc
class __$ShowInfoCopyWithImpl<$Res> implements _$ShowInfoCopyWith<$Res> {
  __$ShowInfoCopyWithImpl(this._self, this._then);

  final _ShowInfo _self;
  final $Res Function(_ShowInfo) _then;

  /// Create a copy of BreedsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? breedInfo = null,
    Object? fetchedDogs = null,
  }) {
    return _then(_ShowInfo(
      breedInfo: null == breedInfo
          ? _self.breedInfo
          : breedInfo // ignore: cast_nullable_to_non_nullable
              as BreedInfo,
      fetchedDogs: null == fetchedDogs
          ? _self._fetchedDogs
          : fetchedDogs // ignore: cast_nullable_to_non_nullable
              as List<BreedInfo>,
    ));
  }
}

/// @nodoc

class _ErrorState implements BreedsState {
  const _ErrorState({this.exception, required List<BreedInfo> fetchedDogs})
      : _fetchedDogs = fetchedDogs;

  final Object? exception;
  final List<BreedInfo> _fetchedDogs;
  List<BreedInfo> get fetchedDogs {
    if (_fetchedDogs is EqualUnmodifiableListView) return _fetchedDogs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fetchedDogs);
  }

  /// Create a copy of BreedsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ErrorStateCopyWith<_ErrorState> get copyWith =>
      __$ErrorStateCopyWithImpl<_ErrorState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ErrorState &&
            const DeepCollectionEquality().equals(other.exception, exception) &&
            const DeepCollectionEquality()
                .equals(other.fetchedDogs, _fetchedDogs));
  }

  @override
  int get hashCode {
    return Object.hash(
        runtimeType,
        const DeepCollectionEquality().hash(exception),
        const DeepCollectionEquality().hash(_fetchedDogs));
  }

  @override
  String toString() {
    return 'BreedsState.error(exception: $exception, fetchedDogs: $fetchedDogs)';
  }
}

/// @nodoc
abstract mixin class _$ErrorStateCopyWith<$Res>
    implements $BreedsStateCopyWith<$Res> {
  factory _$ErrorStateCopyWith(
          _ErrorState value, $Res Function(_ErrorState) _then) =
      __$ErrorStateCopyWithImpl;
  @useResult
  $Res call({Object? exception, List<BreedInfo> fetchedDogs});
}

/// @nodoc
class __$ErrorStateCopyWithImpl<$Res> implements _$ErrorStateCopyWith<$Res> {
  __$ErrorStateCopyWithImpl(this._self, this._then);

  final _ErrorState _self;
  final $Res Function(_ErrorState) _then;

  /// Create a copy of BreedsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? exception = freezed,
    Object? fetchedDogs = null,
  }) {
    return _then(_ErrorState(
      exception: freezed == exception ? _self.exception : exception,
      fetchedDogs: null == fetchedDogs
          ? _self._fetchedDogs
          : fetchedDogs // ignore: cast_nullable_to_non_nullable
              as List<BreedInfo>,
    ));
  }
}

// dart format on
