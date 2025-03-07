import 'package:cryptohub/core/utils/ui_constants.dart';
import 'package:cryptohub/features/auth/login/presentation/blocs/login/login_state.dart';
import 'package:cryptohub/core/utils/validators/login_validation.dart';
import 'package:flutter/material.dart';

class ButtonSection extends StatelessWidget {
  final LoginValidation validation;
  final LoginState state;
  final VoidCallback onLoginPressed;

  const ButtonSection({
    super.key,
    required this.validation,
    required this.state,
    required this.onLoginPressed,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
      stream: validation.isFormValid,
      initialData: false,
      builder: (context, snapshot) {
        return ElevatedButton(
          onPressed: snapshot.data == true ? onLoginPressed : null,
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(double.infinity, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 5,
            padding: const EdgeInsets.symmetric(vertical: 15),
          ),
          child: state.maybeWhen(
            loading:
                () => const SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(
                    color: Colors.white,
                    strokeWidth: 2,
                  ),
                ),
            orElse:
                () => const Text(
                  UIConstants.loginButtonText,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
          ),
        );
      },
    );
  }
}
