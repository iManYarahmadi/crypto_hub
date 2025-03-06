import 'package:cryptohub/core/di/injection.dart';
import 'package:cryptohub/core/services/storage_service.dart';
import 'package:cryptohub/features/auth/login/presentation/blocs/login/login_bloc.dart';
import 'package:cryptohub/features/auth/login/presentation/blocs/login/login_event.dart';
import 'package:cryptohub/features/auth/login/presentation/blocs/login/login_state.dart';
import 'package:cryptohub/presentation/blocs/themes/theme_cubit.dart';
import 'package:cryptohub/presentation/validation/login_validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: [
            IconButton(
              icon: Icon(Icons.brightness_6, color: Theme.of(context).iconTheme.color),
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
                    _storageService.saveToken(loginEntity.token);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Login Successful')),
                    );
                  },
                  error: (message) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Error: $message')),
                    );
                  },
                );
              },
              builder: (context, state) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Program Name
                    Text(
                      'CryptoHub',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor,
                        letterSpacing: 1.5,
                      ),
                    ),
                    const SizedBox(height: 40),
                    // Email TextField
                    StreamBuilder<String>(
                      stream: _validation.email,
                      builder: (context, snapshot) {
                        return TextField(
                          controller: _emailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            hintText: 'Enter your email',
                            errorText: snapshot.hasError ? snapshot.error.toString() : null,
                            prefixIcon: Icon(Icons.email, color: Theme.of(context).primaryColor),
                            filled: true,
                            fillColor: Theme.of(context).brightness == Brightness.light
                                ? Colors.grey[200]
                                : Colors.grey[800],
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(color: Theme.of(context).primaryColor, width: 2),
                            ),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 20),
                    // Password TextField
                    StreamBuilder<String>(
                      stream: _validation.password,
                      builder: (context, snapshot) {
                        return TextField(
                          controller: _passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            hintText: 'Enter your password',
                            errorText: snapshot.hasError ? snapshot.error.toString() : null,
                            prefixIcon: Icon(Icons.lock, color: Theme.of(context).primaryColor),
                            filled: true,
                            fillColor: Theme.of(context).brightness == Brightness.light
                                ? Colors.grey[200]
                                : Colors.grey[800],
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(color: Theme.of(context).primaryColor, width: 2),
                            ),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 30),
                    // Login Button with Loading
                    StreamBuilder<bool>(
                      stream: _validation.isFormValid,
                      initialData: false,
                      builder: (context, snapshot) {
                        return ElevatedButton(
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
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(double.infinity, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: 5,
                            padding: const EdgeInsets.symmetric(vertical: 15),
                          ),
                          child: state.maybeWhen(
                            loading: () => const SizedBox(
                              width: 20,
                              height: 20,
                              child: CircularProgressIndicator(
                                color: Colors.white,
                                strokeWidth: 2,
                              ),
                            ),
                            orElse: () => const Text(
                              'Login',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
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
      ),
    );
  }
}