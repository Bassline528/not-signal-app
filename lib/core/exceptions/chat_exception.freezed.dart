// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() unknown,
    required TResult Function() internetConnectionUnavailable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? unknown,
    TResult? Function()? internetConnectionUnavailable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? unknown,
    TResult Function()? internetConnectionUnavailable,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_InternetConnectionUnavailable value)
        internetConnectionUnavailable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_InternetConnectionUnavailable value)?
        internetConnectionUnavailable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_InternetConnectionUnavailable value)?
        internetConnectionUnavailable,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatExceptionCopyWith<$Res> {
  factory $ChatExceptionCopyWith(
          ChatException value, $Res Function(ChatException) then) =
      _$ChatExceptionCopyWithImpl<$Res, ChatException>;
}

/// @nodoc
class _$ChatExceptionCopyWithImpl<$Res, $Val extends ChatException>
    implements $ChatExceptionCopyWith<$Res> {
  _$ChatExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ServerErrorCopyWith<$Res> {
  factory _$$_ServerErrorCopyWith(
          _$_ServerError value, $Res Function(_$_ServerError) then) =
      __$$_ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ServerErrorCopyWithImpl<$Res>
    extends _$ChatExceptionCopyWithImpl<$Res, _$_ServerError>
    implements _$$_ServerErrorCopyWith<$Res> {
  __$$_ServerErrorCopyWithImpl(
      _$_ServerError _value, $Res Function(_$_ServerError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ServerError implements _ServerError {
  const _$_ServerError();

  @override
  String toString() {
    return 'ChatException.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() unknown,
    required TResult Function() internetConnectionUnavailable,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? unknown,
    TResult? Function()? internetConnectionUnavailable,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? unknown,
    TResult Function()? internetConnectionUnavailable,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_InternetConnectionUnavailable value)
        internetConnectionUnavailable,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_InternetConnectionUnavailable value)?
        internetConnectionUnavailable,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_InternetConnectionUnavailable value)?
        internetConnectionUnavailable,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements ChatException {
  const factory _ServerError() = _$_ServerError;
}

/// @nodoc
abstract class _$$_UnknownCopyWith<$Res> {
  factory _$$_UnknownCopyWith(
          _$_Unknown value, $Res Function(_$_Unknown) then) =
      __$$_UnknownCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnknownCopyWithImpl<$Res>
    extends _$ChatExceptionCopyWithImpl<$Res, _$_Unknown>
    implements _$$_UnknownCopyWith<$Res> {
  __$$_UnknownCopyWithImpl(_$_Unknown _value, $Res Function(_$_Unknown) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Unknown implements _Unknown {
  const _$_Unknown();

  @override
  String toString() {
    return 'ChatException.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Unknown);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() unknown,
    required TResult Function() internetConnectionUnavailable,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? unknown,
    TResult? Function()? internetConnectionUnavailable,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? unknown,
    TResult Function()? internetConnectionUnavailable,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_InternetConnectionUnavailable value)
        internetConnectionUnavailable,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_InternetConnectionUnavailable value)?
        internetConnectionUnavailable,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_InternetConnectionUnavailable value)?
        internetConnectionUnavailable,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _Unknown implements ChatException {
  const factory _Unknown() = _$_Unknown;
}

/// @nodoc
abstract class _$$_InternetConnectionUnavailableCopyWith<$Res> {
  factory _$$_InternetConnectionUnavailableCopyWith(
          _$_InternetConnectionUnavailable value,
          $Res Function(_$_InternetConnectionUnavailable) then) =
      __$$_InternetConnectionUnavailableCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InternetConnectionUnavailableCopyWithImpl<$Res>
    extends _$ChatExceptionCopyWithImpl<$Res, _$_InternetConnectionUnavailable>
    implements _$$_InternetConnectionUnavailableCopyWith<$Res> {
  __$$_InternetConnectionUnavailableCopyWithImpl(
      _$_InternetConnectionUnavailable _value,
      $Res Function(_$_InternetConnectionUnavailable) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InternetConnectionUnavailable
    implements _InternetConnectionUnavailable {
  const _$_InternetConnectionUnavailable();

  @override
  String toString() {
    return 'ChatException.internetConnectionUnavailable()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InternetConnectionUnavailable);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() unknown,
    required TResult Function() internetConnectionUnavailable,
  }) {
    return internetConnectionUnavailable();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? unknown,
    TResult? Function()? internetConnectionUnavailable,
  }) {
    return internetConnectionUnavailable?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? unknown,
    TResult Function()? internetConnectionUnavailable,
    required TResult orElse(),
  }) {
    if (internetConnectionUnavailable != null) {
      return internetConnectionUnavailable();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_InternetConnectionUnavailable value)
        internetConnectionUnavailable,
  }) {
    return internetConnectionUnavailable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_InternetConnectionUnavailable value)?
        internetConnectionUnavailable,
  }) {
    return internetConnectionUnavailable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_InternetConnectionUnavailable value)?
        internetConnectionUnavailable,
    required TResult orElse(),
  }) {
    if (internetConnectionUnavailable != null) {
      return internetConnectionUnavailable(this);
    }
    return orElse();
  }
}

abstract class _InternetConnectionUnavailable implements ChatException {
  const factory _InternetConnectionUnavailable() =
      _$_InternetConnectionUnavailable;
}
