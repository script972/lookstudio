// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'breeds_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BreedsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() loading,
    required TResult Function() refresh,
    required TResult Function(BreedInfo breedInfo) showInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? loading,
    TResult? Function()? refresh,
    TResult? Function(BreedInfo breedInfo)? showInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? loading,
    TResult Function()? refresh,
    TResult Function(BreedInfo breedInfo)? showInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadedEvent value) loaded,
    required TResult Function(LoadingEvent value) loading,
    required TResult Function(RefreshEvent value) refresh,
    required TResult Function(ShowInfoEvent value) showInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadedEvent value)? loaded,
    TResult? Function(LoadingEvent value)? loading,
    TResult? Function(RefreshEvent value)? refresh,
    TResult? Function(ShowInfoEvent value)? showInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadedEvent value)? loaded,
    TResult Function(LoadingEvent value)? loading,
    TResult Function(RefreshEvent value)? refresh,
    TResult Function(ShowInfoEvent value)? showInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BreedsEventCopyWith<$Res> {
  factory $BreedsEventCopyWith(
          BreedsEvent value, $Res Function(BreedsEvent) then) =
      _$BreedsEventCopyWithImpl<$Res, BreedsEvent>;
}

/// @nodoc
class _$BreedsEventCopyWithImpl<$Res, $Val extends BreedsEvent>
    implements $BreedsEventCopyWith<$Res> {
  _$BreedsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadedEventImplCopyWith<$Res> {
  factory _$$LoadedEventImplCopyWith(
          _$LoadedEventImpl value, $Res Function(_$LoadedEventImpl) then) =
      __$$LoadedEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadedEventImplCopyWithImpl<$Res>
    extends _$BreedsEventCopyWithImpl<$Res, _$LoadedEventImpl>
    implements _$$LoadedEventImplCopyWith<$Res> {
  __$$LoadedEventImplCopyWithImpl(
      _$LoadedEventImpl _value, $Res Function(_$LoadedEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadedEventImpl implements LoadedEvent {
  const _$LoadedEventImpl();

  @override
  String toString() {
    return 'BreedsEvent.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadedEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() loading,
    required TResult Function() refresh,
    required TResult Function(BreedInfo breedInfo) showInfo,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? loading,
    TResult? Function()? refresh,
    TResult? Function(BreedInfo breedInfo)? showInfo,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? loading,
    TResult Function()? refresh,
    TResult Function(BreedInfo breedInfo)? showInfo,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadedEvent value) loaded,
    required TResult Function(LoadingEvent value) loading,
    required TResult Function(RefreshEvent value) refresh,
    required TResult Function(ShowInfoEvent value) showInfo,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadedEvent value)? loaded,
    TResult? Function(LoadingEvent value)? loading,
    TResult? Function(RefreshEvent value)? refresh,
    TResult? Function(ShowInfoEvent value)? showInfo,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadedEvent value)? loaded,
    TResult Function(LoadingEvent value)? loading,
    TResult Function(RefreshEvent value)? refresh,
    TResult Function(ShowInfoEvent value)? showInfo,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedEvent implements BreedsEvent {
  const factory LoadedEvent() = _$LoadedEventImpl;
}

/// @nodoc
abstract class _$$LoadingEventImplCopyWith<$Res> {
  factory _$$LoadingEventImplCopyWith(
          _$LoadingEventImpl value, $Res Function(_$LoadingEventImpl) then) =
      __$$LoadingEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingEventImplCopyWithImpl<$Res>
    extends _$BreedsEventCopyWithImpl<$Res, _$LoadingEventImpl>
    implements _$$LoadingEventImplCopyWith<$Res> {
  __$$LoadingEventImplCopyWithImpl(
      _$LoadingEventImpl _value, $Res Function(_$LoadingEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingEventImpl implements LoadingEvent {
  const _$LoadingEventImpl();

  @override
  String toString() {
    return 'BreedsEvent.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() loading,
    required TResult Function() refresh,
    required TResult Function(BreedInfo breedInfo) showInfo,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? loading,
    TResult? Function()? refresh,
    TResult? Function(BreedInfo breedInfo)? showInfo,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? loading,
    TResult Function()? refresh,
    TResult Function(BreedInfo breedInfo)? showInfo,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadedEvent value) loaded,
    required TResult Function(LoadingEvent value) loading,
    required TResult Function(RefreshEvent value) refresh,
    required TResult Function(ShowInfoEvent value) showInfo,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadedEvent value)? loaded,
    TResult? Function(LoadingEvent value)? loading,
    TResult? Function(RefreshEvent value)? refresh,
    TResult? Function(ShowInfoEvent value)? showInfo,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadedEvent value)? loaded,
    TResult Function(LoadingEvent value)? loading,
    TResult Function(RefreshEvent value)? refresh,
    TResult Function(ShowInfoEvent value)? showInfo,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingEvent implements BreedsEvent {
  const factory LoadingEvent() = _$LoadingEventImpl;
}

/// @nodoc
abstract class _$$RefreshEventImplCopyWith<$Res> {
  factory _$$RefreshEventImplCopyWith(
          _$RefreshEventImpl value, $Res Function(_$RefreshEventImpl) then) =
      __$$RefreshEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshEventImplCopyWithImpl<$Res>
    extends _$BreedsEventCopyWithImpl<$Res, _$RefreshEventImpl>
    implements _$$RefreshEventImplCopyWith<$Res> {
  __$$RefreshEventImplCopyWithImpl(
      _$RefreshEventImpl _value, $Res Function(_$RefreshEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RefreshEventImpl implements RefreshEvent {
  const _$RefreshEventImpl();

  @override
  String toString() {
    return 'BreedsEvent.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() loading,
    required TResult Function() refresh,
    required TResult Function(BreedInfo breedInfo) showInfo,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? loading,
    TResult? Function()? refresh,
    TResult? Function(BreedInfo breedInfo)? showInfo,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? loading,
    TResult Function()? refresh,
    TResult Function(BreedInfo breedInfo)? showInfo,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadedEvent value) loaded,
    required TResult Function(LoadingEvent value) loading,
    required TResult Function(RefreshEvent value) refresh,
    required TResult Function(ShowInfoEvent value) showInfo,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadedEvent value)? loaded,
    TResult? Function(LoadingEvent value)? loading,
    TResult? Function(RefreshEvent value)? refresh,
    TResult? Function(ShowInfoEvent value)? showInfo,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadedEvent value)? loaded,
    TResult Function(LoadingEvent value)? loading,
    TResult Function(RefreshEvent value)? refresh,
    TResult Function(ShowInfoEvent value)? showInfo,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class RefreshEvent implements BreedsEvent {
  const factory RefreshEvent() = _$RefreshEventImpl;
}

/// @nodoc
abstract class _$$ShowInfoEventImplCopyWith<$Res> {
  factory _$$ShowInfoEventImplCopyWith(
          _$ShowInfoEventImpl value, $Res Function(_$ShowInfoEventImpl) then) =
      __$$ShowInfoEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BreedInfo breedInfo});
}

/// @nodoc
class __$$ShowInfoEventImplCopyWithImpl<$Res>
    extends _$BreedsEventCopyWithImpl<$Res, _$ShowInfoEventImpl>
    implements _$$ShowInfoEventImplCopyWith<$Res> {
  __$$ShowInfoEventImplCopyWithImpl(
      _$ShowInfoEventImpl _value, $Res Function(_$ShowInfoEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? breedInfo = null,
  }) {
    return _then(_$ShowInfoEventImpl(
      breedInfo: null == breedInfo
          ? _value.breedInfo
          : breedInfo // ignore: cast_nullable_to_non_nullable
              as BreedInfo,
    ));
  }
}

/// @nodoc

class _$ShowInfoEventImpl implements ShowInfoEvent {
  const _$ShowInfoEventImpl({required this.breedInfo});

  @override
  final BreedInfo breedInfo;

  @override
  String toString() {
    return 'BreedsEvent.showInfo(breedInfo: $breedInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowInfoEventImpl &&
            (identical(other.breedInfo, breedInfo) ||
                other.breedInfo == breedInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, breedInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowInfoEventImplCopyWith<_$ShowInfoEventImpl> get copyWith =>
      __$$ShowInfoEventImplCopyWithImpl<_$ShowInfoEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() loading,
    required TResult Function() refresh,
    required TResult Function(BreedInfo breedInfo) showInfo,
  }) {
    return showInfo(breedInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? loading,
    TResult? Function()? refresh,
    TResult? Function(BreedInfo breedInfo)? showInfo,
  }) {
    return showInfo?.call(breedInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? loading,
    TResult Function()? refresh,
    TResult Function(BreedInfo breedInfo)? showInfo,
    required TResult orElse(),
  }) {
    if (showInfo != null) {
      return showInfo(breedInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadedEvent value) loaded,
    required TResult Function(LoadingEvent value) loading,
    required TResult Function(RefreshEvent value) refresh,
    required TResult Function(ShowInfoEvent value) showInfo,
  }) {
    return showInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadedEvent value)? loaded,
    TResult? Function(LoadingEvent value)? loading,
    TResult? Function(RefreshEvent value)? refresh,
    TResult? Function(ShowInfoEvent value)? showInfo,
  }) {
    return showInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadedEvent value)? loaded,
    TResult Function(LoadingEvent value)? loading,
    TResult Function(RefreshEvent value)? refresh,
    TResult Function(ShowInfoEvent value)? showInfo,
    required TResult orElse(),
  }) {
    if (showInfo != null) {
      return showInfo(this);
    }
    return orElse();
  }
}

abstract class ShowInfoEvent implements BreedsEvent {
  const factory ShowInfoEvent({required final BreedInfo breedInfo}) =
      _$ShowInfoEventImpl;

  BreedInfo get breedInfo;
  @JsonKey(ignore: true)
  _$$ShowInfoEventImplCopyWith<_$ShowInfoEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BreedsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<BreedInfo> fetchedDogs) loaded,
    required TResult Function(BreedInfo breedInfo, List<BreedInfo> fetchedDogs)
        showInfo,
    required TResult Function(Object? exception, List<BreedInfo> fetchedDogs)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BreedInfo> fetchedDogs)? loaded,
    TResult? Function(BreedInfo breedInfo, List<BreedInfo> fetchedDogs)?
        showInfo,
    TResult? Function(Object? exception, List<BreedInfo> fetchedDogs)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BreedInfo> fetchedDogs)? loaded,
    TResult Function(BreedInfo breedInfo, List<BreedInfo> fetchedDogs)?
        showInfo,
    TResult Function(Object? exception, List<BreedInfo> fetchedDogs)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_ShowInfo value) showInfo,
    required TResult Function(_ErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_ShowInfo value)? showInfo,
    TResult? Function(_ErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_ShowInfo value)? showInfo,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BreedsStateCopyWith<$Res> {
  factory $BreedsStateCopyWith(
          BreedsState value, $Res Function(BreedsState) then) =
      _$BreedsStateCopyWithImpl<$Res, BreedsState>;
}

/// @nodoc
class _$BreedsStateCopyWithImpl<$Res, $Val extends BreedsState>
    implements $BreedsStateCopyWith<$Res> {
  _$BreedsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialStateImplCopyWith<$Res> {
  factory _$$InitialStateImplCopyWith(
          _$InitialStateImpl value, $Res Function(_$InitialStateImpl) then) =
      __$$InitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialStateImplCopyWithImpl<$Res>
    extends _$BreedsStateCopyWithImpl<$Res, _$InitialStateImpl>
    implements _$$InitialStateImplCopyWith<$Res> {
  __$$InitialStateImplCopyWithImpl(
      _$InitialStateImpl _value, $Res Function(_$InitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialStateImpl implements _InitialState {
  const _$InitialStateImpl();

  @override
  String toString() {
    return 'BreedsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
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
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BreedInfo> fetchedDogs)? loaded,
    TResult? Function(BreedInfo breedInfo, List<BreedInfo> fetchedDogs)?
        showInfo,
    TResult? Function(Object? exception, List<BreedInfo> fetchedDogs)? error,
  }) {
    return initial?.call();
  }

  @override
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
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_ShowInfo value) showInfo,
    required TResult Function(_ErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_ShowInfo value)? showInfo,
    TResult? Function(_ErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_ShowInfo value)? showInfo,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements BreedsState {
  const factory _InitialState() = _$InitialStateImpl;
}

/// @nodoc
abstract class _$$LoadingStateImplCopyWith<$Res> {
  factory _$$LoadingStateImplCopyWith(
          _$LoadingStateImpl value, $Res Function(_$LoadingStateImpl) then) =
      __$$LoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingStateImplCopyWithImpl<$Res>
    extends _$BreedsStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingStateImpl implements _LoadingState {
  const _$LoadingStateImpl();

  @override
  String toString() {
    return 'BreedsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
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
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BreedInfo> fetchedDogs)? loaded,
    TResult? Function(BreedInfo breedInfo, List<BreedInfo> fetchedDogs)?
        showInfo,
    TResult? Function(Object? exception, List<BreedInfo> fetchedDogs)? error,
  }) {
    return loading?.call();
  }

  @override
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
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_ShowInfo value) showInfo,
    required TResult Function(_ErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_ShowInfo value)? showInfo,
    TResult? Function(_ErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_ShowInfo value)? showInfo,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements BreedsState {
  const factory _LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$LoadedStateImplCopyWith<$Res> {
  factory _$$LoadedStateImplCopyWith(
          _$LoadedStateImpl value, $Res Function(_$LoadedStateImpl) then) =
      __$$LoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<BreedInfo> fetchedDogs});
}

/// @nodoc
class __$$LoadedStateImplCopyWithImpl<$Res>
    extends _$BreedsStateCopyWithImpl<$Res, _$LoadedStateImpl>
    implements _$$LoadedStateImplCopyWith<$Res> {
  __$$LoadedStateImplCopyWithImpl(
      _$LoadedStateImpl _value, $Res Function(_$LoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchedDogs = null,
  }) {
    return _then(_$LoadedStateImpl(
      fetchedDogs: null == fetchedDogs
          ? _value._fetchedDogs
          : fetchedDogs // ignore: cast_nullable_to_non_nullable
              as List<BreedInfo>,
    ));
  }
}

/// @nodoc

class _$LoadedStateImpl implements _LoadedState {
  const _$LoadedStateImpl({required final List<BreedInfo> fetchedDogs})
      : _fetchedDogs = fetchedDogs;

  final List<BreedInfo> _fetchedDogs;
  @override
  List<BreedInfo> get fetchedDogs {
    if (_fetchedDogs is EqualUnmodifiableListView) return _fetchedDogs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fetchedDogs);
  }

  @override
  String toString() {
    return 'BreedsState.loaded(fetchedDogs: $fetchedDogs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedStateImpl &&
            const DeepCollectionEquality()
                .equals(other._fetchedDogs, _fetchedDogs));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_fetchedDogs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedStateImplCopyWith<_$LoadedStateImpl> get copyWith =>
      __$$LoadedStateImplCopyWithImpl<_$LoadedStateImpl>(this, _$identity);

  @override
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
    return loaded(fetchedDogs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BreedInfo> fetchedDogs)? loaded,
    TResult? Function(BreedInfo breedInfo, List<BreedInfo> fetchedDogs)?
        showInfo,
    TResult? Function(Object? exception, List<BreedInfo> fetchedDogs)? error,
  }) {
    return loaded?.call(fetchedDogs);
  }

  @override
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
    if (loaded != null) {
      return loaded(fetchedDogs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_ShowInfo value) showInfo,
    required TResult Function(_ErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_ShowInfo value)? showInfo,
    TResult? Function(_ErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_ShowInfo value)? showInfo,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _LoadedState implements BreedsState {
  const factory _LoadedState({required final List<BreedInfo> fetchedDogs}) =
      _$LoadedStateImpl;

  List<BreedInfo> get fetchedDogs;
  @JsonKey(ignore: true)
  _$$LoadedStateImplCopyWith<_$LoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowInfoImplCopyWith<$Res> {
  factory _$$ShowInfoImplCopyWith(
          _$ShowInfoImpl value, $Res Function(_$ShowInfoImpl) then) =
      __$$ShowInfoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BreedInfo breedInfo, List<BreedInfo> fetchedDogs});
}

/// @nodoc
class __$$ShowInfoImplCopyWithImpl<$Res>
    extends _$BreedsStateCopyWithImpl<$Res, _$ShowInfoImpl>
    implements _$$ShowInfoImplCopyWith<$Res> {
  __$$ShowInfoImplCopyWithImpl(
      _$ShowInfoImpl _value, $Res Function(_$ShowInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? breedInfo = null,
    Object? fetchedDogs = null,
  }) {
    return _then(_$ShowInfoImpl(
      breedInfo: null == breedInfo
          ? _value.breedInfo
          : breedInfo // ignore: cast_nullable_to_non_nullable
              as BreedInfo,
      fetchedDogs: null == fetchedDogs
          ? _value._fetchedDogs
          : fetchedDogs // ignore: cast_nullable_to_non_nullable
              as List<BreedInfo>,
    ));
  }
}

/// @nodoc

class _$ShowInfoImpl implements _ShowInfo {
  const _$ShowInfoImpl(
      {required this.breedInfo, required final List<BreedInfo> fetchedDogs})
      : _fetchedDogs = fetchedDogs;

  @override
  final BreedInfo breedInfo;
  final List<BreedInfo> _fetchedDogs;
  @override
  List<BreedInfo> get fetchedDogs {
    if (_fetchedDogs is EqualUnmodifiableListView) return _fetchedDogs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fetchedDogs);
  }

  @override
  String toString() {
    return 'BreedsState.showInfo(breedInfo: $breedInfo, fetchedDogs: $fetchedDogs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowInfoImpl &&
            (identical(other.breedInfo, breedInfo) ||
                other.breedInfo == breedInfo) &&
            const DeepCollectionEquality()
                .equals(other._fetchedDogs, _fetchedDogs));
  }

  @override
  int get hashCode => Object.hash(runtimeType, breedInfo,
      const DeepCollectionEquality().hash(_fetchedDogs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowInfoImplCopyWith<_$ShowInfoImpl> get copyWith =>
      __$$ShowInfoImplCopyWithImpl<_$ShowInfoImpl>(this, _$identity);

  @override
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
    return showInfo(breedInfo, fetchedDogs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BreedInfo> fetchedDogs)? loaded,
    TResult? Function(BreedInfo breedInfo, List<BreedInfo> fetchedDogs)?
        showInfo,
    TResult? Function(Object? exception, List<BreedInfo> fetchedDogs)? error,
  }) {
    return showInfo?.call(breedInfo, fetchedDogs);
  }

  @override
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
    if (showInfo != null) {
      return showInfo(breedInfo, fetchedDogs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_ShowInfo value) showInfo,
    required TResult Function(_ErrorState value) error,
  }) {
    return showInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_ShowInfo value)? showInfo,
    TResult? Function(_ErrorState value)? error,
  }) {
    return showInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_ShowInfo value)? showInfo,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (showInfo != null) {
      return showInfo(this);
    }
    return orElse();
  }
}

abstract class _ShowInfo implements BreedsState {
  const factory _ShowInfo(
      {required final BreedInfo breedInfo,
      required final List<BreedInfo> fetchedDogs}) = _$ShowInfoImpl;

  BreedInfo get breedInfo;
  List<BreedInfo> get fetchedDogs;
  @JsonKey(ignore: true)
  _$$ShowInfoImplCopyWith<_$ShowInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorStateImplCopyWith<$Res> {
  factory _$$ErrorStateImplCopyWith(
          _$ErrorStateImpl value, $Res Function(_$ErrorStateImpl) then) =
      __$$ErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object? exception, List<BreedInfo> fetchedDogs});
}

/// @nodoc
class __$$ErrorStateImplCopyWithImpl<$Res>
    extends _$BreedsStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
      _$ErrorStateImpl _value, $Res Function(_$ErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = freezed,
    Object? fetchedDogs = null,
  }) {
    return _then(_$ErrorStateImpl(
      exception: freezed == exception ? _value.exception : exception,
      fetchedDogs: null == fetchedDogs
          ? _value._fetchedDogs
          : fetchedDogs // ignore: cast_nullable_to_non_nullable
              as List<BreedInfo>,
    ));
  }
}

/// @nodoc

class _$ErrorStateImpl implements _ErrorState {
  const _$ErrorStateImpl(
      {this.exception, required final List<BreedInfo> fetchedDogs})
      : _fetchedDogs = fetchedDogs;

  @override
  final Object? exception;
  final List<BreedInfo> _fetchedDogs;
  @override
  List<BreedInfo> get fetchedDogs {
    if (_fetchedDogs is EqualUnmodifiableListView) return _fetchedDogs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fetchedDogs);
  }

  @override
  String toString() {
    return 'BreedsState.error(exception: $exception, fetchedDogs: $fetchedDogs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorStateImpl &&
            const DeepCollectionEquality().equals(other.exception, exception) &&
            const DeepCollectionEquality()
                .equals(other._fetchedDogs, _fetchedDogs));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(exception),
      const DeepCollectionEquality().hash(_fetchedDogs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      __$$ErrorStateImplCopyWithImpl<_$ErrorStateImpl>(this, _$identity);

  @override
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
    return error(exception, fetchedDogs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BreedInfo> fetchedDogs)? loaded,
    TResult? Function(BreedInfo breedInfo, List<BreedInfo> fetchedDogs)?
        showInfo,
    TResult? Function(Object? exception, List<BreedInfo> fetchedDogs)? error,
  }) {
    return error?.call(exception, fetchedDogs);
  }

  @override
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
    if (error != null) {
      return error(exception, fetchedDogs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_ShowInfo value) showInfo,
    required TResult Function(_ErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_ShowInfo value)? showInfo,
    TResult? Function(_ErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_ShowInfo value)? showInfo,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorState implements BreedsState {
  const factory _ErrorState(
      {final Object? exception,
      required final List<BreedInfo> fetchedDogs}) = _$ErrorStateImpl;

  Object? get exception;
  List<BreedInfo> get fetchedDogs;
  @JsonKey(ignore: true)
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
