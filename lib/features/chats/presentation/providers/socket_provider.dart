import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:not_signal/core/constants/key_value_storage_constants.dart';
import 'package:not_signal/core/services/get_it.dart';
import 'package:not_signal/features/shared/domain/services/key_value_storage_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

part 'socket_provider.g.dart';
part 'socket_provider.freezed.dart';

@riverpod
class SocketProvider extends _$SocketProvider {
  final KeyValueStorageService _keyValueStorageService =
      getIt.get<KeyValueStorageService>();
  @override
  SocketState build() {
    return SocketState(
      serverStatus: ServerStatus.online,
      socket: IO.io(
        'http://localhost:3000',
        {
          'transports': ['websocket'],
          'autoConnect': false,
          'forceNew': true,
          'extra': {
            'token': _keyValueStorageService.getValue<String>(
              accessTokenKey,
            ),
          },
        },
      ),
    );
  }

  void connect() {
    state.socket.connect();
    state = state.copyWith(
      serverStatus: ServerStatus.online,
    );
  }

  void disconnect() {
    state.socket.disconnect();

    state = state.copyWith(
      serverStatus: ServerStatus.offline,
    );
  }
}

enum ServerStatus { online, offline, connecting }

@freezed
class SocketState with _$SocketState {
  const factory SocketState({
    @Default(ServerStatus.connecting) ServerStatus serverStatus,
    required IO.Socket socket,
  }) = _SocketState;
}
