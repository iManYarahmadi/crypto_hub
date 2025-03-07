import 'package:cryptohub/features/profile/sub_modules/update_user_phone_number/presentation/sections/update_phone_number_section.dart';
import 'package:cryptohub/features/profile/sub_modules/user_information/presentation/sections/user_information_section.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
      title: const Text('Profile'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: theme.scaffoldBackgroundColor,
        leading: IconButton(
        icon: Icon(Icons.arrow_back, color: theme.colorScheme.onSurface),
        onPressed: () => context.pop(),
        ),
        ),body: Column(
      children: [
        UserInformationSection(),
        SizedBox(height: 30,),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Divider(color: Colors.grey,height: 1,),
        ),
        SizedBox(height: 15,),
        const PhoneNumberSection(),
      ],
    ),
    );
  }
}
