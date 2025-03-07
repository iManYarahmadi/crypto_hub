import 'package:cryptohub/core/di/injection.dart';
import 'package:cryptohub/core/services/storage_service.dart';
import 'package:cryptohub/core/utils/ui_constants.dart' show UIConstants;
import 'package:cryptohub/features/auth/login/presentation/blocs/login/login_bloc.dart';
import 'package:cryptohub/features/auth/login/presentation/blocs/login/login_event.dart';
import 'package:cryptohub/features/auth/login/presentation/blocs/login/login_state.dart';
import 'package:cryptohub/features/auth/login/presentation/sections/app_name_section.dart';
import 'package:cryptohub/features/auth/login/presentation/sections/button_section.dart';
import 'package:cryptohub/features/auth/login/presentation/sections/form_section.dart';
import 'package:cryptohub/presentation/blocs/themes/theme_cubit.dart';
import 'package:cryptohub/core/utils/validators/login_validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final LoginValidation _validation = LoginValidation();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final StorageService _storageService = sl<StorageService>();

  @override
  void initState() {
    super.initState();
    _emailController.addListener(() {
      _validation.changeEmail(_emailController.text);
    });
    _passwordController.addListener(() {
      _validation.changePassword(_passwordController.text);
    });
  }

  @override
  void dispose() {
    _validation.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            icon: Icon(
              Icons.brightness_6,
              color: Theme.of(context).iconTheme.color,
            ),
            onPressed: () => context.read<ThemeCubit>().toggleTheme(),
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: BlocConsumer<LoginBloc, LoginState>(
            listener: (context, state) {
              state.when(
                initial: () {},
                loading: () {},
                success: (loginEntity) {
                  _storageService.saveToken(loginEntity.token).then((_) {
                    if (!context.mounted) {
                      return;
                    }
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(UIConstants.loginSuccessMessage)),
                    );
                    context.goNamed('home');
                  });
                  context.goNamed('home');
                },
                error: (message) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        '${UIConstants.errorMessagePrefix}: $message',
                      ),
                    ),
                  );
                },
              );
            },
            builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AppNameSection(),
                  const SizedBox(height: 40),
                  FormSection(
                    validation: _validation,
                    emailController: _emailController,
                    passwordController: _passwordController,
                  ),
                  const SizedBox(height: 30),
                  ButtonSection(
                    validation: _validation,
                    state: state,
                    onLoginPressed: () {
                      context.read<LoginBloc>().add(
                        LoginEvent.loginSubmitted(
                          email: _emailController.text,
                          password: _passwordController.text,
                        ),
                      );
                    },
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
