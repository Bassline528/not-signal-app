import 'package:chatview/chatview.dart';
import 'package:flutter/material.dart';
import 'package:not_signal/features/chats/data/data_sources/data.dart';
import 'package:not_signal/core/helpers/theme_helper.dart';

class PrivateChatScreen extends StatelessWidget {
  final _chatController = ChatController(
    initialMessageList: Data.messageList,
    scrollController: ScrollController(),
    chatUsers: [
      ChatUser(
        id: '2',
        name: 'Simform',
        profilePhoto: Data.profileImage,
      ),
      ChatUser(
        id: '3',
        name: 'Jhon',
        profilePhoto: Data.profileImage,
      ),
      ChatUser(
        id: '4',
        name: 'Mike',
        profilePhoto: Data.profileImage,
      ),
      ChatUser(
        id: '5',
        name: 'Rich',
        profilePhoto: Data.profileImage,
      ),
    ],
  );

  final _currentUser = ChatUser(id: '1', name: 'User');

  final _chatViewState = ChatViewState.hasMessages;

  void _showHideTypingIndicator() {
    _chatController.setTypingIndicator = !_chatController.showTypingIndicator;
  }

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Scaffold(
      body: ChatView(
        currentUser: _currentUser,
        chatController: _chatController,
        onSendTap: _onSendTap,
        chatViewState: _chatViewState,
        chatViewStateConfig: ChatViewStateConfiguration(
          onReloadButtonTap: () {},
        ),
        messageConfig: MessageConfiguration(
          messageReactionConfig: MessageReactionConfiguration(
            backgroundColor: theme.colorScheme.surfaceVariant,
            borderColor: theme.colorScheme.surfaceVariant,
          ),
        ),
        appBar: ChatViewAppBar(
          elevation: 0,
          backGroundColor: theme.colorScheme.surface,
          profilePicture: Data.profileImage,
          chatTitle: "Tito",
          userStatus: 'Online',
          chatTitleTextStyle: context.textTheme.headlineSmall,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.videocam_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
            ),
          ],
        ),
        repliedMessageConfig: RepliedMessageConfiguration(
          backgroundColor: theme.colorScheme.surfaceVariant,
        ),
        reactionPopupConfig: ReactionPopupConfiguration(
          backgroundColor: theme.colorScheme.surface,
          shadow: BoxShadow(
            color: Colors.transparent,
          ),
        ),
        chatBubbleConfig: ChatBubbleConfiguration(
          inComingChatBubbleConfig: ChatBubble(
            color: theme.colorScheme.surface,
          ),
          outgoingChatBubbleConfig: ChatBubble(
            color: theme.colorScheme.primary,
          ),
        ),
        sendMessageConfig: SendMessageConfiguration(
          replyDialogColor: theme.colorScheme.surfaceVariant,
          replyTitleColor: theme.colorScheme.onSurfaceVariant,
          replyMessageColor: theme.colorScheme.onSurface,
          closeIconColor: theme.colorScheme.onSurface,
          defaultSendButtonColor: theme.colorScheme.primary,
          textFieldBackgroundColor: theme.colorScheme.surface,
          textFieldConfig: TextFieldConfiguration(
            textStyle: theme.textTheme.bodyMedium,
            textInputType: TextInputType.multiline,
          ),
          voiceRecordingConfiguration: VoiceRecordingConfiguration(
            backgroundColor: theme.colorScheme.onBackground,
          ),
        ),
        chatBackgroundConfig: ChatBackgroundConfiguration(
          backgroundColor: theme.colorScheme.background,
        ),
      ),
    );
  }

  void _onSendTap(
    String message,
    ReplyMessage replyMessage,
    MessageType messageType,
  ) {
    final id = int.parse(Data.messageList.last.id) + 1;
    _chatController.addMessage(
      Message(
        id: id.toString(),
        createdAt: DateTime.now(),
        message: message,
        sendBy: _currentUser.id,
        replyMessage: replyMessage,
        messageType: messageType,
      ),
    );
    Future.delayed(const Duration(milliseconds: 300), () {
      _chatController.initialMessageList.last.setStatus =
          MessageStatus.undelivered;
    });
    Future.delayed(const Duration(seconds: 1), () {
      _chatController.initialMessageList.last.setStatus = MessageStatus.read;
    });
  }
}
