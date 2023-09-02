import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:not_signal/features/chats/presentation/screens/calls_screen.dart';
import 'package:not_signal/features/chats/presentation/screens/chats_screen.dart';
import 'package:not_signal/core/core.dart';
import 'package:not_signal/features/auth/presentation/providers/auth_providers.dart';
import 'package:not_signal/features/home/presentation/providers/navigation_bar_provider.dart';
import 'package:not_signal/features/shared/domain/services/key_value_storage_service.dart';

class HomeScreen extends ConsumerWidget {
  final keyServices = getIt.get<KeyValueStorageService>();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screens = <Widget>[ChatsScreen(), CallsScreen()];

    final navigation = ref.watch(navigationProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            CircleAvatar(),
            SizedBox(width: 20),
            Text(
              'Not Signal',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      floatingActionButton: navigation == 0
          ? const _NewChatFloatingActionButton()
          : const _NewCallFloatingActionButton(),
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigation,
        onDestinationSelected:
            ref.read(navigationProvider.notifier).changeIndex,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.chat_bubble_outline),
            selectedIcon: Icon(Icons.chat_bubble),
            label: 'Chats',
          ),
          NavigationDestination(
            icon: Icon(Icons.call_outlined),
            selectedIcon: Icon(Icons.call),
            label: 'Calls',
          ),
        ],
      ),
      body: screens[navigation],
    );
  }
}

class _NewChatFloatingActionButton extends StatelessWidget {
  const _NewChatFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.edit_outlined),
      onPressed: () {
        context.push('/new-message');
      },
    );
  }
}

class _NewCallFloatingActionButton extends StatelessWidget {
  const _NewCallFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add_call),
      onPressed: () {},
    );
  }
}
