import 'package:cryptohub/core/di/injection.dart';
import 'package:cryptohub/core/utils/validators/phone_number_validator.dart';
import 'package:cryptohub/features/profile/sub_modules/update_user_phone_number/data/params/update_user_phone_params.dart';
import 'package:cryptohub/features/profile/sub_modules/update_user_phone_number/presentation/blocs/add_currency_to_favorite/update_user_phone_bloc.dart';
import 'package:cryptohub/features/profile/sub_modules/update_user_phone_number/presentation/blocs/add_currency_to_favorite/update_user_phone_event.dart';
import 'package:cryptohub/features/profile/sub_modules/update_user_phone_number/presentation/blocs/add_currency_to_favorite/update_user_phone_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PhoneNumberSection extends StatefulWidget {
  const PhoneNumberSection({super.key});

  @override
  State<PhoneNumberSection> createState() => _PhoneNumberSectionState();
}

class _PhoneNumberSectionState extends State<PhoneNumberSection> {
  late final TextEditingController _phoneController;
  late final PhoneNumberValidator _validators;

  @override
  void initState() {
    super.initState();
    _phoneController = TextEditingController();
    _validators = sl<PhoneNumberValidator>();
    _phoneController.addListener(() {
      _validators.phoneNumberSink.add(_phoneController.text);
    });
  }

  @override
  void dispose() {
    _phoneController.removeListener(() {
      _validators.phoneNumberSink.add(_phoneController.text);
    });
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: BlocConsumer<UpdateUserPhoneBloc, UpdateUserPhoneState>(
        listener: (context, updateState) {
          updateState.whenOrNull(
            success: (userInfo) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    'Your number is ${userInfo.phoneNumber}, ${userInfo.name}!',
                  ),
                  backgroundColor: theme.colorScheme.primary,
                ),
              );
            },
            error: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(message),
                  backgroundColor: theme.colorScheme.error,
                ),
              );
            },
          );
        },
        builder: (context, updateState) {
          final phoneNumber = updateState.whenOrNull(
            success: (userInfo) => userInfo.phoneNumber,
          );
          final isLoading =
              updateState.whenOrNull(loading: () => true) ?? false;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Phone Number Submission',
                style: theme.textTheme.bodyLarge?.copyWith(
                  color: theme.colorScheme.primary,
                ),
              ),
              SizedBox(height: 15),
              StreamBuilder<String>(
                stream: _validators.phoneNumberStream,
                builder: (context, snapshot) {
                  return TextField(
                    controller: _phoneController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                      hintText: 'Enter Your Phone Number',
                      labelStyle: TextStyle(color: theme.colorScheme.primary),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: theme.colorScheme.primary,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: theme.colorScheme.onSurface.withOpacity(0.3),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: theme.colorScheme.primary,
                        ),
                      ),
                      errorText:
                          snapshot.hasError ? snapshot.error.toString() : null,
                    ),
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: theme.colorScheme.onSurface,
                    ),
                  );
                },
              ),
              const SizedBox(height: 8),
              if (phoneNumber != null)
                Text(
                  'Saved Number: $phoneNumber',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onSurface,
                  ),
                ),
              const SizedBox(height: 16),
              StreamBuilder<String>(
                stream: _validators.phoneNumberStream,
                builder: (context, snapshot) {
                  return ElevatedButton(
                    onPressed:
                        isLoading || !snapshot.hasData || snapshot.hasError
                            ? null
                            : () {
                              context.read<UpdateUserPhoneBloc>().add(
                                UpdateUserPhoneEvent.updatePhone(
                                  UpdateUserPhoneParams(
                                    phoneNumber: _phoneController.text,
                                  ),
                                ),
                              );
                            },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: theme.colorScheme.primary,
                      foregroundColor: theme.colorScheme.onPrimary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 12,
                      ),
                    ),
                    child:
                        isLoading
                            ? const CircularProgressIndicator(
                              color: Colors.white,
                            )
                            : const Text('Save Phone Number'),
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
