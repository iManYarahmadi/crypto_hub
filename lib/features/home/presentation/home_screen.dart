import 'package:cryptohub/core/utils/ui_constants.dart';
import 'package:cryptohub/features/home/sub_modules/currency/presentation/sections/currency_section.dart';
import 'package:cryptohub/presentation/blocs/themes/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          UIConstants.appName,
          style: Theme.of(
            context,
          ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: IconButton(
          icon: Icon(
            Icons.brightness_6,
            color: Theme.of(context).iconTheme.color,
          ),
          onPressed: () {
            context.read<ThemeCubit>().toggleTheme();
          },
          tooltip: 'Toggle Theme',
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.person,
              color: Theme.of(context).colorScheme.onSurface,
            ),
            onPressed: () {
              context.goNamed('profile');
            },
            tooltip: 'Profile',
          ),
        ],
      ),
      body: const CurrencySection(),
    );
  }
}
