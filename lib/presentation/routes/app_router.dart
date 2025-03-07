import 'package:cryptohub/core/di/injection.dart';
import 'package:cryptohub/features/auth/login/presentation/blocs/login/login_bloc.dart';
import 'package:cryptohub/features/auth/login/presentation/screens/login_screen.dart';
import 'package:cryptohub/features/home/presentation/home_screen.dart';
import 'package:cryptohub/features/home/sub_modules/currency/presentation/blocs/currency/currency_bloc.dart';
import 'package:cryptohub/features/home/sub_modules/currency/presentation/blocs/currency/currency_event.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/add_currency_to_favorite/presentation/blocs/add_currency_to_favorite/add_currency_to_favorite_bloc.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/delete_currency_from_favorite/presentation/blocs/delete_currency_to_favorite/delete_currency_from_favorite_bloc.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/get_favorite_currency/presentation/blocs/get_favorite_currency/get_favorite_currencies_bloc.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/get_favorite_currency/presentation/blocs/get_favorite_currency/get_favorite_currencies_event.dart';
import 'package:cryptohub/features/profile/presentation/screens/profile_screen.dart';
import 'package:cryptohub/features/profile/sub_modules/update_user_phone_number/presentation/blocs/add_currency_to_favorite/update_user_phone_bloc.dart';
import 'package:cryptohub/features/profile/sub_modules/user_information/presentation/blocs/user_information/user_information_bloc.dart';
import 'package:cryptohub/features/profile/sub_modules/user_information/presentation/blocs/user_information/user_information_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart'
    show BlocProvider, MultiBlocProvider;
import 'package:go_router/go_router.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(
      path: '/login',
      name: 'login',
      builder:
          (context, state) => BlocProvider(
            create: (_) => sl<LoginBloc>(),
            child: const LoginScreen(),
          ),
    ),
    GoRoute(
      path: '/home',
      name: 'home',
      builder:
          (context, state) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create:
                    (_) =>
                        sl<CurrencyBloc>()
                          ..add(const CurrencyEvent.fetchCurrencies()),
              ),
              BlocProvider(
                create:
                    (_) =>
                        sl<GetFavoriteCurrenciesBloc>()..add(
                          const GetFavoriteCurrenciesEvent.fetchFavoriteCurrencies(),
                        ),
              ),
              BlocProvider(create: (_) => sl<AddCurrencyToFavoriteBloc>()),
              BlocProvider(create: (_) => sl<DeleteCurrencyFromFavoriteBloc>()),
            ],
            child: const HomeScreen(),
          ),
      routes: [
        GoRoute(
          path: '/profile',
          name: 'profile',
          builder:
              (context, state) => MultiBlocProvider(
                providers: [
                  BlocProvider(
                    create:
                        (_) =>
                            sl<UserInformationBloc>()..add(
                              const UserInformationEvent.fetchUserInformation(),
                            ),
                  ),
                  BlocProvider(create: (_) => sl<UpdateUserPhoneBloc>()),
                ],
                child: const ProfileScreen(),
              ),
        ),
      ],
    ),
  ],
);
