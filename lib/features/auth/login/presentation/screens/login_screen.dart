import 'package:cryptohub/core/di/injection.dart';
import 'package:cryptohub/core/services/storage_service.dart';
import 'package:cryptohub/features/auth/login/presentation/blocs/login/login_bloc.dart';
import 'package:cryptohub/features/auth/login/presentation/blocs/login/login_event.dart';
import 'package:cryptohub/features/auth/login/presentation/blocs/login/login_state.dart';
import 'package:cryptohub/presentation/blocs/themes/theme_cubit.dart';
import 'package:cryptohub/presentation/validation/login_validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

class LoginScreen extends StatefulWidget {
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
    return BlocProvider(
      create: (_) => sl<LoginBloc>(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('ورود'),
          actions: [
            IconButton(
              icon: Icon(Icons.brightness_6),
              onPressed: () => context.read<ThemeCubit>().toggleTheme(),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: BlocConsumer<LoginBloc, LoginState>(
            listener: (context, state) {
              state.when(
                initial: () {},
                loading: () {},
                success: (loginEntity) {
                  _storageService.saveToken(loginEntity.token);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('ورود موفق: }')),
                  );
                },
                error: (message) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('خطا: $message')),
                  );
                },
              );
            },
            builder: (context, state) {
              return Column(
                children: [
                  StreamBuilder<String>(
                    stream: _validation.email,
                    builder: (context, snapshot) {
                      return TextField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          labelText: 'ایمیل',
                          errorText: snapshot.hasError ? snapshot.error.toString() : null,
                        ),
                        keyboardType: TextInputType.emailAddress,
                      );
                    },
                  ),
                  StreamBuilder<String>(
                    stream: _validation.password,
                    builder: (context, snapshot) {
                      return TextField(
                        controller: _passwordController,
                        decoration: InputDecoration(
                          labelText: 'رمز عبور',
                          errorText: snapshot.hasError ? snapshot.error.toString() : null,
                        ),
                        obscureText: true,
                      );
                    },
                  ),
                  const SizedBox(height: 20),
                  StreamBuilder<bool>(
                    stream: _validation.isFormValid,
                    initialData: false,
                    builder: (context, snapshot) {
                      return state.maybeWhen(
                        loading: () => const CircularProgressIndicator(),
                        orElse: () => ElevatedButton(
                          onPressed: snapshot.data == true
                              ? () {
                            context.read<LoginBloc>().add(
                              LoginEvent.loginSubmitted(
                                email: _emailController.text,
                                password: _passwordController.text,
                              ),
                            );
                          }
                              : null,
                          child: const Text('ورود'),
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