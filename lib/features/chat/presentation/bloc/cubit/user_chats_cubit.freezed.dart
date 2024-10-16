// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_chats_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserChatsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() lestenSuccess,
    required TResult Function() getAllMessagesSucees,
    required TResult Function(MessageResponse messageResponse)
        sendMessageSuccess,
    required TResult Function(String errormesg) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? lestenSuccess,
    TResult? Function()? getAllMessagesSucees,
    TResult? Function(MessageResponse messageResponse)? sendMessageSuccess,
    TResult? Function(String errormesg)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? lestenSuccess,
    TResult Function()? getAllMessagesSucees,
    TResult Function(MessageResponse messageResponse)? sendMessageSuccess,
    TResult Function(String errormesg)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ListenSuceess value) lestenSuccess,
    required TResult Function(GetAllMessagesSucees value) getAllMessagesSucees,
    required TResult Function(SendMessageResponse value) sendMessageSuccess,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ListenSuceess value)? lestenSuccess,
    TResult? Function(GetAllMessagesSucees value)? getAllMessagesSucees,
    TResult? Function(SendMessageResponse value)? sendMessageSuccess,
    TResult? Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ListenSuceess value)? lestenSuccess,
    TResult Function(GetAllMessagesSucees value)? getAllMessagesSucees,
    TResult Function(SendMessageResponse value)? sendMessageSuccess,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserChatsStateCopyWith<$Res> {
  factory $UserChatsStateCopyWith(
          UserChatsState value, $Res Function(UserChatsState) then) =
      _$UserChatsStateCopyWithImpl<$Res, UserChatsState>;
}

/// @nodoc
class _$UserChatsStateCopyWithImpl<$Res, $Val extends UserChatsState>
    implements $UserChatsStateCopyWith<$Res> {
  _$UserChatsStateCopyWithImpl(this._value, this._then);

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
    extends _$UserChatsStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'UserChatsState.initial()';
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
    required TResult Function() lestenSuccess,
    required TResult Function() getAllMessagesSucees,
    required TResult Function(MessageResponse messageResponse)
        sendMessageSuccess,
    required TResult Function(String errormesg) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? lestenSuccess,
    TResult? Function()? getAllMessagesSucees,
    TResult? Function(MessageResponse messageResponse)? sendMessageSuccess,
    TResult? Function(String errormesg)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? lestenSuccess,
    TResult Function()? getAllMessagesSucees,
    TResult Function(MessageResponse messageResponse)? sendMessageSuccess,
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
    required TResult Function(ListenSuceess value) lestenSuccess,
    required TResult Function(GetAllMessagesSucees value) getAllMessagesSucees,
    required TResult Function(SendMessageResponse value) sendMessageSuccess,
    required TResult Function(Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ListenSuceess value)? lestenSuccess,
    TResult? Function(GetAllMessagesSucees value)? getAllMessagesSucees,
    TResult? Function(SendMessageResponse value)? sendMessageSuccess,
    TResult? Function(Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ListenSuceess value)? lestenSuccess,
    TResult Function(GetAllMessagesSucees value)? getAllMessagesSucees,
    TResult Function(SendMessageResponse value)? sendMessageSuccess,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UserChatsState {
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
    extends _$UserChatsStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'UserChatsState.loading()';
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
    required TResult Function() lestenSuccess,
    required TResult Function() getAllMessagesSucees,
    required TResult Function(MessageResponse messageResponse)
        sendMessageSuccess,
    required TResult Function(String errormesg) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? lestenSuccess,
    TResult? Function()? getAllMessagesSucees,
    TResult? Function(MessageResponse messageResponse)? sendMessageSuccess,
    TResult? Function(String errormesg)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? lestenSuccess,
    TResult Function()? getAllMessagesSucees,
    TResult Function(MessageResponse messageResponse)? sendMessageSuccess,
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
    required TResult Function(ListenSuceess value) lestenSuccess,
    required TResult Function(GetAllMessagesSucees value) getAllMessagesSucees,
    required TResult Function(SendMessageResponse value) sendMessageSuccess,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ListenSuceess value)? lestenSuccess,
    TResult? Function(GetAllMessagesSucees value)? getAllMessagesSucees,
    TResult? Function(SendMessageResponse value)? sendMessageSuccess,
    TResult? Function(Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ListenSuceess value)? lestenSuccess,
    TResult Function(GetAllMessagesSucees value)? getAllMessagesSucees,
    TResult Function(SendMessageResponse value)? sendMessageSuccess,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements UserChatsState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$ListenSuceessImplCopyWith<$Res> {
  factory _$$ListenSuceessImplCopyWith(
          _$ListenSuceessImpl value, $Res Function(_$ListenSuceessImpl) then) =
      __$$ListenSuceessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ListenSuceessImplCopyWithImpl<$Res>
    extends _$UserChatsStateCopyWithImpl<$Res, _$ListenSuceessImpl>
    implements _$$ListenSuceessImplCopyWith<$Res> {
  __$$ListenSuceessImplCopyWithImpl(
      _$ListenSuceessImpl _value, $Res Function(_$ListenSuceessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ListenSuceessImpl implements ListenSuceess {
  const _$ListenSuceessImpl();

  @override
  String toString() {
    return 'UserChatsState.lestenSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ListenSuceessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() lestenSuccess,
    required TResult Function() getAllMessagesSucees,
    required TResult Function(MessageResponse messageResponse)
        sendMessageSuccess,
    required TResult Function(String errormesg) error,
  }) {
    return lestenSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? lestenSuccess,
    TResult? Function()? getAllMessagesSucees,
    TResult? Function(MessageResponse messageResponse)? sendMessageSuccess,
    TResult? Function(String errormesg)? error,
  }) {
    return lestenSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? lestenSuccess,
    TResult Function()? getAllMessagesSucees,
    TResult Function(MessageResponse messageResponse)? sendMessageSuccess,
    TResult Function(String errormesg)? error,
    required TResult orElse(),
  }) {
    if (lestenSuccess != null) {
      return lestenSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ListenSuceess value) lestenSuccess,
    required TResult Function(GetAllMessagesSucees value) getAllMessagesSucees,
    required TResult Function(SendMessageResponse value) sendMessageSuccess,
    required TResult Function(Error value) error,
  }) {
    return lestenSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ListenSuceess value)? lestenSuccess,
    TResult? Function(GetAllMessagesSucees value)? getAllMessagesSucees,
    TResult? Function(SendMessageResponse value)? sendMessageSuccess,
    TResult? Function(Error value)? error,
  }) {
    return lestenSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ListenSuceess value)? lestenSuccess,
    TResult Function(GetAllMessagesSucees value)? getAllMessagesSucees,
    TResult Function(SendMessageResponse value)? sendMessageSuccess,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (lestenSuccess != null) {
      return lestenSuccess(this);
    }
    return orElse();
  }
}

abstract class ListenSuceess implements UserChatsState {
  const factory ListenSuceess() = _$ListenSuceessImpl;
}

/// @nodoc
abstract class _$$GetAllMessagesSuceesImplCopyWith<$Res> {
  factory _$$GetAllMessagesSuceesImplCopyWith(_$GetAllMessagesSuceesImpl value,
          $Res Function(_$GetAllMessagesSuceesImpl) then) =
      __$$GetAllMessagesSuceesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllMessagesSuceesImplCopyWithImpl<$Res>
    extends _$UserChatsStateCopyWithImpl<$Res, _$GetAllMessagesSuceesImpl>
    implements _$$GetAllMessagesSuceesImplCopyWith<$Res> {
  __$$GetAllMessagesSuceesImplCopyWithImpl(_$GetAllMessagesSuceesImpl _value,
      $Res Function(_$GetAllMessagesSuceesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllMessagesSuceesImpl implements GetAllMessagesSucees {
  const _$GetAllMessagesSuceesImpl();

  @override
  String toString() {
    return 'UserChatsState.getAllMessagesSucees()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllMessagesSuceesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() lestenSuccess,
    required TResult Function() getAllMessagesSucees,
    required TResult Function(MessageResponse messageResponse)
        sendMessageSuccess,
    required TResult Function(String errormesg) error,
  }) {
    return getAllMessagesSucees();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? lestenSuccess,
    TResult? Function()? getAllMessagesSucees,
    TResult? Function(MessageResponse messageResponse)? sendMessageSuccess,
    TResult? Function(String errormesg)? error,
  }) {
    return getAllMessagesSucees?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? lestenSuccess,
    TResult Function()? getAllMessagesSucees,
    TResult Function(MessageResponse messageResponse)? sendMessageSuccess,
    TResult Function(String errormesg)? error,
    required TResult orElse(),
  }) {
    if (getAllMessagesSucees != null) {
      return getAllMessagesSucees();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ListenSuceess value) lestenSuccess,
    required TResult Function(GetAllMessagesSucees value) getAllMessagesSucees,
    required TResult Function(SendMessageResponse value) sendMessageSuccess,
    required TResult Function(Error value) error,
  }) {
    return getAllMessagesSucees(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ListenSuceess value)? lestenSuccess,
    TResult? Function(GetAllMessagesSucees value)? getAllMessagesSucees,
    TResult? Function(SendMessageResponse value)? sendMessageSuccess,
    TResult? Function(Error value)? error,
  }) {
    return getAllMessagesSucees?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ListenSuceess value)? lestenSuccess,
    TResult Function(GetAllMessagesSucees value)? getAllMessagesSucees,
    TResult Function(SendMessageResponse value)? sendMessageSuccess,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (getAllMessagesSucees != null) {
      return getAllMessagesSucees(this);
    }
    return orElse();
  }
}

abstract class GetAllMessagesSucees implements UserChatsState {
  const factory GetAllMessagesSucees() = _$GetAllMessagesSuceesImpl;
}

/// @nodoc
abstract class _$$SendMessageResponseImplCopyWith<$Res> {
  factory _$$SendMessageResponseImplCopyWith(_$SendMessageResponseImpl value,
          $Res Function(_$SendMessageResponseImpl) then) =
      __$$SendMessageResponseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MessageResponse messageResponse});
}

/// @nodoc
class __$$SendMessageResponseImplCopyWithImpl<$Res>
    extends _$UserChatsStateCopyWithImpl<$Res, _$SendMessageResponseImpl>
    implements _$$SendMessageResponseImplCopyWith<$Res> {
  __$$SendMessageResponseImplCopyWithImpl(_$SendMessageResponseImpl _value,
      $Res Function(_$SendMessageResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageResponse = null,
  }) {
    return _then(_$SendMessageResponseImpl(
      null == messageResponse
          ? _value.messageResponse
          : messageResponse // ignore: cast_nullable_to_non_nullable
              as MessageResponse,
    ));
  }
}

/// @nodoc

class _$SendMessageResponseImpl implements SendMessageResponse {
  const _$SendMessageResponseImpl(this.messageResponse);

  @override
  final MessageResponse messageResponse;

  @override
  String toString() {
    return 'UserChatsState.sendMessageSuccess(messageResponse: $messageResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessageResponseImpl &&
            (identical(other.messageResponse, messageResponse) ||
                other.messageResponse == messageResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messageResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessageResponseImplCopyWith<_$SendMessageResponseImpl> get copyWith =>
      __$$SendMessageResponseImplCopyWithImpl<_$SendMessageResponseImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() lestenSuccess,
    required TResult Function() getAllMessagesSucees,
    required TResult Function(MessageResponse messageResponse)
        sendMessageSuccess,
    required TResult Function(String errormesg) error,
  }) {
    return sendMessageSuccess(messageResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? lestenSuccess,
    TResult? Function()? getAllMessagesSucees,
    TResult? Function(MessageResponse messageResponse)? sendMessageSuccess,
    TResult? Function(String errormesg)? error,
  }) {
    return sendMessageSuccess?.call(messageResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? lestenSuccess,
    TResult Function()? getAllMessagesSucees,
    TResult Function(MessageResponse messageResponse)? sendMessageSuccess,
    TResult Function(String errormesg)? error,
    required TResult orElse(),
  }) {
    if (sendMessageSuccess != null) {
      return sendMessageSuccess(messageResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ListenSuceess value) lestenSuccess,
    required TResult Function(GetAllMessagesSucees value) getAllMessagesSucees,
    required TResult Function(SendMessageResponse value) sendMessageSuccess,
    required TResult Function(Error value) error,
  }) {
    return sendMessageSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ListenSuceess value)? lestenSuccess,
    TResult? Function(GetAllMessagesSucees value)? getAllMessagesSucees,
    TResult? Function(SendMessageResponse value)? sendMessageSuccess,
    TResult? Function(Error value)? error,
  }) {
    return sendMessageSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ListenSuceess value)? lestenSuccess,
    TResult Function(GetAllMessagesSucees value)? getAllMessagesSucees,
    TResult Function(SendMessageResponse value)? sendMessageSuccess,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (sendMessageSuccess != null) {
      return sendMessageSuccess(this);
    }
    return orElse();
  }
}

abstract class SendMessageResponse implements UserChatsState {
  const factory SendMessageResponse(final MessageResponse messageResponse) =
      _$SendMessageResponseImpl;

  MessageResponse get messageResponse;
  @JsonKey(ignore: true)
  _$$SendMessageResponseImplCopyWith<_$SendMessageResponseImpl> get copyWith =>
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
    extends _$UserChatsStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'UserChatsState.error(errormesg: $errormesg)';
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
    required TResult Function() lestenSuccess,
    required TResult Function() getAllMessagesSucees,
    required TResult Function(MessageResponse messageResponse)
        sendMessageSuccess,
    required TResult Function(String errormesg) error,
  }) {
    return error(errormesg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? lestenSuccess,
    TResult? Function()? getAllMessagesSucees,
    TResult? Function(MessageResponse messageResponse)? sendMessageSuccess,
    TResult? Function(String errormesg)? error,
  }) {
    return error?.call(errormesg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? lestenSuccess,
    TResult Function()? getAllMessagesSucees,
    TResult Function(MessageResponse messageResponse)? sendMessageSuccess,
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
    required TResult Function(ListenSuceess value) lestenSuccess,
    required TResult Function(GetAllMessagesSucees value) getAllMessagesSucees,
    required TResult Function(SendMessageResponse value) sendMessageSuccess,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ListenSuceess value)? lestenSuccess,
    TResult? Function(GetAllMessagesSucees value)? getAllMessagesSucees,
    TResult? Function(SendMessageResponse value)? sendMessageSuccess,
    TResult? Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ListenSuceess value)? lestenSuccess,
    TResult Function(GetAllMessagesSucees value)? getAllMessagesSucees,
    TResult Function(SendMessageResponse value)? sendMessageSuccess,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements UserChatsState {
  const factory Error(final String errormesg) = _$ErrorImpl;

  String get errormesg;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
