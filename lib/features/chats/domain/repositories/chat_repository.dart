import 'package:chatview/chatview.dart';
import 'package:dartz/dartz.dart';
import 'package:not_signal/core/exceptions/chat_exception.dart';
import 'package:not_signal/features/auth/domain/entities/entities.dart';

abstract class ChatRepository {
  Future<Either<ChatException, List<User>>> getAvailableUsersToChat();
  Future<Either<ChatException, List<Message>>> getMessages(String toUserId);
}
