import 'package:chatview/chatview.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:not_signal/core/constants/api_constants.dart';
import 'package:not_signal/core/exceptions/chat_exception.dart';
import 'package:not_signal/core/services/http_client.dart';
import 'package:not_signal/features/auth/domain/entities/user.dart';

abstract class ChatDataSource {
  Future<Either<ChatException, List<User>>> getAvailableUsersToChat();
  Future<Either<ChatException, List<Message>>> getMessages(String toUserId);
}

@Injectable(as: ChatDataSource)
class ChatDataSourceImpl implements ChatDataSource {
  ChatDataSourceImpl(this.dioClient);

  final DioClient dioClient;
  @override
  Future<Either<ChatException, List<User>>> getAvailableUsersToChat() async {
    try {
      final data = await dioClient.dio.get<List<Map<String, dynamic>>>(
        getAvailableUsersToChatEndpoint,
      );
      return Right(data.data!.map(User.fromJson).toList());
    } on DioException catch (error) {
      return switch (error.response?.statusCode) {
        422 => const Left(ChatException.unknown()),
        _ => const Left(ChatException.unknown()),
      };
    }
  }

  @override
  Future<Either<ChatException, List<Message>>> getMessages(
    String toUserId,
  ) async {
    try {
      final data = await dioClient.dio.get<List<Map<String, dynamic>>>(
        '$getMessagesEndpoint/$toUserId',
      );
      return Right(data.data!.map(Message.fromJson).toList());
    } on DioException catch (error) {
      return switch (error.response?.statusCode) {
        422 => const Left(ChatException.unknown()),
        _ => const Left(ChatException.unknown()),
      };
    }
  }
}
