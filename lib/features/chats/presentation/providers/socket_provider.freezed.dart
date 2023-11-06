// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'socket_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SocketState {
  ServerStatus get serverStatus => throw _privateConstructorUsedError;
  IO.Socket get socket => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SocketStateCopyWith<SocketState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocketStateCopyWith<$Res> {
  factory $SocketStateCopyWith(
          SocketState value, $Res Function(SocketState) then) =
      _$SocketStateCopyWithImpl<$Res, SocketState>;
  @useResult
  $Res call({ServerStatus serverStatus, IO.Socket socket});
}

/// @nodoc
class _$SocketStateCopyWithImpl<$Res, $Val extends SocketState>
    implements $SocketStateCopyWith<$Res> {
  _$SocketStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serverStatus = null,
    Object? socket = null,
  }) {
    return _then(_value.copyWith(
      serverStatus: null == serverStatus
          ? _value.serverStatus
          : serverStatus // ignore: cast_nullable_to_non_nullable
              as ServerStatus,
      socket: null == socket
          ? _value.socket
          : socket // ignore: cast_nullable_to_non_nullable
              as IO.Socket,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SocketStateCopyWith<$Res>
    implements $SocketStateCopyWith<$Res> {
  factory _$$_SocketStateCopyWith(
          _$_SocketState value, $Res Function(_$_SocketState) then) =
      __$$_SocketStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ServerStatus serverStatus, IO.Socket socket});
}

/// @nodoc
class __$$_SocketStateCopyWithImpl<$Res>
    extends _$SocketStateCopyWithImpl<$Res, _$_SocketState>
    implements _$$_SocketStateCopyWith<$Res> {
  __$$_SocketStateCopyWithImpl(
      _$_SocketState _value, $Res Function(_$_SocketState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serverStatus = null,
    Object? socket = null,
  }) {
    return _then(_$_SocketState(
      serverStatus: null == serverStatus
          ? _value.serverStatus
          : serverStatus // ignore: cast_nullable_to_non_nullable
              as ServerStatus,
      socket: null == socket
          ? _value.socket
          : socket // ignore: cast_nullable_to_non_nullable
              as IO.Socket,
    ));
  }
}

/// @nodoc

class _$_SocketState implements _SocketState {
  const _$_SocketState(
      {this.serverStatus = ServerStatus.connecting, required this.socket});

  @override
  @JsonKey()
  final ServerStatus serverStatus;
  @override
  final IO.Socket socket;

  @override
  String toString() {
    return 'SocketState(serverStatus: $serverStatus, socket: $socket)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SocketState &&
            (identical(other.serverStatus, serverStatus) ||
                other.serverStatus == serverStatus) &&
            (identical(other.socket, socket) || other.socket == socket));
  }

  @override
  int get hashCode => Object.hash(runtimeType, serverStatus, socket);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SocketStateCopyWith<_$_SocketState> get copyWith =>
      __$$_SocketStateCopyWithImpl<_$_SocketState>(this, _$identity);
}

abstract class _SocketState implements SocketState {
  const factory _SocketState(
      {final ServerStatus serverStatus,
      required final IO.Socket socket}) = _$_SocketState;

  @override
  ServerStatus get serverStatus;
  @override
  IO.Socket get socket;
  @override
  @JsonKey(ignore: true)
  _$$_SocketStateCopyWith<_$_SocketState> get copyWith =>
      throw _privateConstructorUsedError;
}
