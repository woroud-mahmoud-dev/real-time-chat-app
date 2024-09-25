// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            AllActiveUsersResponseEntity activeUsersResponseEntity)
        success,
    required TResult Function(AllConversationsResponse allConversationsResponse)
        getChatsSuccess,
    required TResult Function(String errormesg) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AllActiveUsersResponseEntity activeUsersResponseEntity)?
        success,
    TResult? Function(AllConversationsResponse allConversationsResponse)?
        getChatsSuccess,
    TResult? Function(String errormesg)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AllActiveUsersResponseEntity activeUsersResponseEntity)?
        success,
    TResult Function(AllConversationsResponse allConversationsResponse)?
        getChatsSuccess,
    TResult Function(String errormesg)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Suceess value) success,
    required TResult Function(getChatsSucceess value) getChatsSuccess,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Suceess value)? success,
    TResult? Function(getChatsSucceess value)? getChatsSuccess,
    TResult? Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Suceess value)? success,
    TResult Function(getChatsSucceess value)? getChatsSuccess,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'HomeState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            AllActiveUsersResponseEntity activeUsersResponseEntity)
        success,
    required TResult Function(AllConversationsResponse allConversationsResponse)
        getChatsSuccess,
    required TResult Function(String errormesg) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AllActiveUsersResponseEntity activeUsersResponseEntity)?
        success,
    TResult? Function(AllConversationsResponse allConversationsResponse)?
        getChatsSuccess,
    TResult? Function(String errormesg)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AllActiveUsersResponseEntity activeUsersResponseEntity)?
        success,
    TResult Function(AllConversationsResponse allConversationsResponse)?
        getChatsSuccess,
    TResult Function(String errormesg)? error,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Suceess value) success,
    required TResult Function(getChatsSucceess value) getChatsSuccess,
    required TResult Function(Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Suceess value)? success,
    TResult? Function(getChatsSucceess value)? getChatsSuccess,
    TResult? Function(Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Suceess value)? success,
    TResult Function(getChatsSucceess value)? getChatsSuccess,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            AllActiveUsersResponseEntity activeUsersResponseEntity)
        success,
    required TResult Function(AllConversationsResponse allConversationsResponse)
        getChatsSuccess,
    required TResult Function(String errormesg) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AllActiveUsersResponseEntity activeUsersResponseEntity)?
        success,
    TResult? Function(AllConversationsResponse allConversationsResponse)?
        getChatsSuccess,
    TResult? Function(String errormesg)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AllActiveUsersResponseEntity activeUsersResponseEntity)?
        success,
    TResult Function(AllConversationsResponse allConversationsResponse)?
        getChatsSuccess,
    TResult Function(String errormesg)? error,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Suceess value) success,
    required TResult Function(getChatsSucceess value) getChatsSuccess,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Suceess value)? success,
    TResult? Function(getChatsSucceess value)? getChatsSuccess,
    TResult? Function(Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Suceess value)? success,
    TResult Function(getChatsSucceess value)? getChatsSuccess,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements HomeState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuceessImplCopyWith<$Res> {
  factory _$$SuceessImplCopyWith(
          _$SuceessImpl value, $Res Function(_$SuceessImpl) then) =
      __$$SuceessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AllActiveUsersResponseEntity activeUsersResponseEntity});
}

/// @nodoc
class __$$SuceessImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$SuceessImpl>
    implements _$$SuceessImplCopyWith<$Res> {
  __$$SuceessImplCopyWithImpl(
      _$SuceessImpl _value, $Res Function(_$SuceessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeUsersResponseEntity = null,
  }) {
    return _then(_$SuceessImpl(
      null == activeUsersResponseEntity
          ? _value.activeUsersResponseEntity
          : activeUsersResponseEntity // ignore: cast_nullable_to_non_nullable
              as AllActiveUsersResponseEntity,
    ));
  }
}

/// @nodoc

class _$SuceessImpl implements Suceess {
  const _$SuceessImpl(this.activeUsersResponseEntity);

  @override
  final AllActiveUsersResponseEntity activeUsersResponseEntity;

  @override
  String toString() {
    return 'HomeState.success(activeUsersResponseEntity: $activeUsersResponseEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuceessImpl &&
            (identical(other.activeUsersResponseEntity,
                    activeUsersResponseEntity) ||
                other.activeUsersResponseEntity == activeUsersResponseEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, activeUsersResponseEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuceessImplCopyWith<_$SuceessImpl> get copyWith =>
      __$$SuceessImplCopyWithImpl<_$SuceessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            AllActiveUsersResponseEntity activeUsersResponseEntity)
        success,
    required TResult Function(AllConversationsResponse allConversationsResponse)
        getChatsSuccess,
    required TResult Function(String errormesg) error,
  }) {
    return success(activeUsersResponseEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AllActiveUsersResponseEntity activeUsersResponseEntity)?
        success,
    TResult? Function(AllConversationsResponse allConversationsResponse)?
        getChatsSuccess,
    TResult? Function(String errormesg)? error,
  }) {
    return success?.call(activeUsersResponseEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AllActiveUsersResponseEntity activeUsersResponseEntity)?
        success,
    TResult Function(AllConversationsResponse allConversationsResponse)?
        getChatsSuccess,
    TResult Function(String errormesg)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(activeUsersResponseEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Suceess value) success,
    required TResult Function(getChatsSucceess value) getChatsSuccess,
    required TResult Function(Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Suceess value)? success,
    TResult? Function(getChatsSucceess value)? getChatsSuccess,
    TResult? Function(Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Suceess value)? success,
    TResult Function(getChatsSucceess value)? getChatsSuccess,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Suceess implements HomeState {
  const factory Suceess(
          final AllActiveUsersResponseEntity activeUsersResponseEntity) =
      _$SuceessImpl;

  AllActiveUsersResponseEntity get activeUsersResponseEntity;
  @JsonKey(ignore: true)
  _$$SuceessImplCopyWith<_$SuceessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$getChatsSucceessImplCopyWith<$Res> {
  factory _$$getChatsSucceessImplCopyWith(_$getChatsSucceessImpl value,
          $Res Function(_$getChatsSucceessImpl) then) =
      __$$getChatsSucceessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AllConversationsResponse allConversationsResponse});
}

/// @nodoc
class __$$getChatsSucceessImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$getChatsSucceessImpl>
    implements _$$getChatsSucceessImplCopyWith<$Res> {
  __$$getChatsSucceessImplCopyWithImpl(_$getChatsSucceessImpl _value,
      $Res Function(_$getChatsSucceessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allConversationsResponse = null,
  }) {
    return _then(_$getChatsSucceessImpl(
      null == allConversationsResponse
          ? _value.allConversationsResponse
          : allConversationsResponse // ignore: cast_nullable_to_non_nullable
              as AllConversationsResponse,
    ));
  }
}

/// @nodoc

class _$getChatsSucceessImpl implements getChatsSucceess {
  const _$getChatsSucceessImpl(this.allConversationsResponse);

  @override
  final AllConversationsResponse allConversationsResponse;

  @override
  String toString() {
    return 'HomeState.getChatsSuccess(allConversationsResponse: $allConversationsResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getChatsSucceessImpl &&
            (identical(
                    other.allConversationsResponse, allConversationsResponse) ||
                other.allConversationsResponse == allConversationsResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, allConversationsResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$getChatsSucceessImplCopyWith<_$getChatsSucceessImpl> get copyWith =>
      __$$getChatsSucceessImplCopyWithImpl<_$getChatsSucceessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            AllActiveUsersResponseEntity activeUsersResponseEntity)
        success,
    required TResult Function(AllConversationsResponse allConversationsResponse)
        getChatsSuccess,
    required TResult Function(String errormesg) error,
  }) {
    return getChatsSuccess(allConversationsResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AllActiveUsersResponseEntity activeUsersResponseEntity)?
        success,
    TResult? Function(AllConversationsResponse allConversationsResponse)?
        getChatsSuccess,
    TResult? Function(String errormesg)? error,
  }) {
    return getChatsSuccess?.call(allConversationsResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AllActiveUsersResponseEntity activeUsersResponseEntity)?
        success,
    TResult Function(AllConversationsResponse allConversationsResponse)?
        getChatsSuccess,
    TResult Function(String errormesg)? error,
    required TResult orElse(),
  }) {
    if (getChatsSuccess != null) {
      return getChatsSuccess(allConversationsResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Suceess value) success,
    required TResult Function(getChatsSucceess value) getChatsSuccess,
    required TResult Function(Error value) error,
  }) {
    return getChatsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Suceess value)? success,
    TResult? Function(getChatsSucceess value)? getChatsSuccess,
    TResult? Function(Error value)? error,
  }) {
    return getChatsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Suceess value)? success,
    TResult Function(getChatsSucceess value)? getChatsSuccess,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (getChatsSuccess != null) {
      return getChatsSuccess(this);
    }
    return orElse();
  }
}

abstract class getChatsSucceess implements HomeState {
  const factory getChatsSucceess(
          final AllConversationsResponse allConversationsResponse) =
      _$getChatsSucceessImpl;

  AllConversationsResponse get allConversationsResponse;
  @JsonKey(ignore: true)
  _$$getChatsSucceessImplCopyWith<_$getChatsSucceessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errormesg});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errormesg = null,
  }) {
    return _then(_$ErrorImpl(
      null == errormesg
          ? _value.errormesg
          : errormesg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements Error {
  const _$ErrorImpl(this.errormesg);

  @override
  final String errormesg;

  @override
  String toString() {
    return 'HomeState.error(errormesg: $errormesg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.errormesg, errormesg) ||
                other.errormesg == errormesg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errormesg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            AllActiveUsersResponseEntity activeUsersResponseEntity)
        success,
    required TResult Function(AllConversationsResponse allConversationsResponse)
        getChatsSuccess,
    required TResult Function(String errormesg) error,
  }) {
    return error(errormesg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AllActiveUsersResponseEntity activeUsersResponseEntity)?
        success,
    TResult? Function(AllConversationsResponse allConversationsResponse)?
        getChatsSuccess,
    TResult? Function(String errormesg)? error,
  }) {
    return error?.call(errormesg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AllActiveUsersResponseEntity activeUsersResponseEntity)?
        success,
    TResult Function(AllConversationsResponse allConversationsResponse)?
        getChatsSuccess,
    TResult Function(String errormesg)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errormesg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Suceess value) success,
    required TResult Function(getChatsSucceess value) getChatsSuccess,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Suceess value)? success,
    TResult? Function(getChatsSucceess value)? getChatsSuccess,
    TResult? Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Suceess value)? success,
    TResult Function(getChatsSucceess value)? getChatsSuccess,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements HomeState {
  const factory Error(final String errormesg) = _$ErrorImpl;

  String get errormesg;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
