import 'package:chatview/chatview.dart';
import 'package:not_signal/core/core.dart';
import 'package:not_signal/features/auth/domain/entities/user.dart';
import 'package:not_signal/features/chats/domain/repositories/chat_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'chat_provider.g.dart';

@riverpod
FutureOr<List<Message>> getMessages(GetMessagesRef ref, String toUserId) async {
  final chatRepository = getIt.get<ChatRepository>();
  final response = await chatRepository.getMessages(toUserId);
  return response.fold(
    (l) => [],
    (r) => r,
  );
}

@riverpod
FutureOr<List<User>> getAvailableUsersToChat(
  GetAvailableUsersToChatRef ref,
) async {
  final chatRepository = getIt.get<ChatRepository>();
  final response = await chatRepository.getAvailableUsersToChat();
  return response.fold(
    (l) => [],
    (r) => r,
  );
}
