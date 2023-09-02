import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ChatsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            ChatListTile(),
            ChatListTile(),
            ChatListTile(),
          ],
        ),
      ),
    );
  }
}

class ChatListTile extends StatelessWidget {
  const ChatListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: () {
        context.push('/private-message/1');
      },
      child: Container(
        padding: EdgeInsets.all(10),
        child: const Row(
          children: [
            CircleAvatar(
              radius: 25,
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Name'),
                Text('Last message'),
              ],
            ),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('24 aug'),
                Icon(Icons.check_circle_outline_outlined),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
