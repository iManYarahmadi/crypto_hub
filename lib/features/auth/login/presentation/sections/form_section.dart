import 'package:cryptohub/core/utils/ui_constants.dart';
import 'package:cryptohub/features/auth/login/presentation/widgets/custom_text_field.dart';
import 'package:cryptohub/presentation/validation/login_validation.dart';
import 'package:flutter/material.dart';

class FormSection extends StatelessWidget {
  final LoginValidation validation;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const FormSection({super.key,
    required this.validation,
    required this.emailController,
    required this.passwordController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StreamBuilder<String>(
          stream: validation.email,
          builder: (context, snapshot) {
            return CustomTextField(
              controller: emailController,
              labelText: UIConstants.emailLabel,
              hintText: UIConstants.emailHint,
              errorText: snapshot.hasError ? snapshot.error.toString() : null,
              prefixIcon: Icons.email,
              keyboardType: TextInputType.emailAddress,
            );
          },
        ),
        const SizedBox(height: 20),
        StreamBuilder<String>(
          stream: validation.password,
          builder: (context, snapshot) {
            return CustomTextField(
              controller: passwordController,
              labelText: UIConstants.passwordLabel,
              hintText: UIConstants.passwordHint,
              errorText: snapshot.hasError ? snapshot.error.toString() : null,
              prefixIcon: Icons.lock,
              obscureText: true,
            );
          },
        ),
      ],
    );
  }
}
