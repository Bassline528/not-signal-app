import 'package:go_router/go_router.dart';
import 'package:not_signal/features/chats/presentation/screens/new_chat_screen.dart';
import 'package:not_signal/features/chats/presentation/screens/private_chat_screen.dart';
import 'package:not_signal/features/auth/presentation/screens/screens.dart';
import 'package:not_signal/features/home/presentation/screens/home_screen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';

@riverpod
GoRouter appRouter(AppRouterRef ref) {
  return GoRouter(
    initialLocation: '/splash',
    routes: [
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/register',
        builder: (context, state) => const RegisterScreen(),
      ),
      GoRoute(
        path: '/',
        name: 'home',
        builder: (context, state) => HomeScreen(),
      ),
      GoRoute(
        path: '/new-message',
        name: 'new-message',
        builder: (context, state) => NewChatScreen(),
      ),
      GoRoute(
        path: '/private-message/:id',
        name: 'private-message',
        builder: (context, state) => PrivateChatScreen(),
      ),
      GoRoute(
        path: '/splash',
        builder: (context, state) => const CheckAuthStatusScreen(),
      ),
    ],
  );
}
