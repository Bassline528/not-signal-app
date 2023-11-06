// ignore: implementation_imports
import 'package:chatview/src/models/message.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:not_signal/core/exceptions/chat_exception.dart';
import 'package:not_signal/features/auth/domain/entities/user.dart';
import 'package:not_signal/features/chats/data/data_sources/chat_data_source.dart';
import 'package:not_signal/features/chats/domain/repositories/chat_repository.dart';

@Injectable(as: ChatRepository)
class ChatRepositoryImp implements ChatRepository {
  ChatRepositoryImp(this._chatDataSource);

  final ChatDataSource _chatDataSource;
  @override
  Future<Either<ChatException, List<User>>> getAvailableUsersToChat() {
    return _chatDataSource.getAvailableUsersToChat();
  }

  @override
  Future<Either<ChatException, List<Message>>> getMessages(String toUserId) {
    return _chatDataSource.getMessages(toUserId);
  }
}
