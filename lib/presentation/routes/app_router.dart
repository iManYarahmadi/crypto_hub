import 'package:cryptohub/features/auth/login/presentation/screens/login_screen.dart';
import 'package:cryptohub/features/home/presentation/home_screen.dart';
import 'package:cryptohub/features/profile/presentation/screens/profile_screen.dart';
import 'package:go_router/go_router.dart';


final GoRouter appRouter = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(
      path: '/login',
      name: 'login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/home',
      name: 'home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/profile',
      name: 'profile',
      builder: (context, state) => const ProfileScreen(),
    ),
  ],
);