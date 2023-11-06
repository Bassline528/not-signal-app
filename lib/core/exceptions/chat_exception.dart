import 'package:freezed_annotation/freezed_annotation.dart';
part 'chat_exception.freezed.dart';

@freezed
class ChatException with _$ChatException {
  const factory ChatException.serverError() = _ServerError;
  const factory ChatException.unknown() = _Unknown;
  const factory ChatException.internetConnectionUnavailable() =
      _InternetConnectionUnavailable;
}

extension ChatExceptionX on ChatException {
  String get description {
    if (this is _InternetConnectionUnavailable) {
      return 'Sorry, there’s a problem with your internet connection. Please check your connection and try again.';
    } else {
      return 'Sorry, there’s a problem with the server connection. Please try again later.';
    }
  }
}
