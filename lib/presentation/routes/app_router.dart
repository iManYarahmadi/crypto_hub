import 'package:cryptohub/features/auth/login/presentation/screens/login_screen.dart';
import 'package:cryptohub/features/home/presentation/home_screen.dart';
import 'package:go_router/go_router.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/get_favorite_currency',
  routes: [
    GoRoute(
      path: '/get_favorite_currency',
      name: 'get_favorite_currency',
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(
      path: '/home',
      name: 'home',
      builder: (context, state) => HomeScreen(),
    ),
  ],
);