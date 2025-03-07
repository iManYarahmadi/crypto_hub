import 'package:cryptohub/features/profile/sub_modules/user_information/presentation/blocs/user_information/user_information_bloc.dart';
import 'package:cryptohub/features/profile/sub_modules/user_information/presentation/blocs/user_information/user_information_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserInformationSection extends StatelessWidget {
  const UserInformationSection({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
     padding: const EdgeInsets.all(16.0),
     child: BlocBuilder<UserInformationBloc, UserInformationState>(
       builder: (context, state) {
         return state.when(
           initial: () => const SizedBox.shrink(),
           loading: () => Center(
             child: CircularProgressIndicator(
               valueColor: AlwaysStoppedAnimation<Color>(theme.colorScheme.primary),
             ),
           ),
           loaded: (userInfo) => Column(
             crossAxisAlignment: CrossAxisAlignment.stretch,
             children: [
               TextField(
                 controller: TextEditingController(text: userInfo.name),
                 readOnly: true,
                 decoration: InputDecoration(
                   labelText: 'Name',
                   labelStyle: TextStyle(color: theme.colorScheme.primary),
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(12),
                     borderSide: BorderSide(color: theme.colorScheme.primary),
                   ),
                   enabledBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(12),
                     borderSide: BorderSide(color: theme.colorScheme.onSurface.withOpacity(0.3)),
                   ),
                   focusedBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(12),
                     borderSide: BorderSide(color: theme.colorScheme.primary),
                   ),
                 ),
                 style: theme.textTheme.bodyLarge?.copyWith(color: theme.colorScheme.onSurface),
               ),
               const SizedBox(height: 16),
               TextField(
                 controller: TextEditingController(text: userInfo.email),
                 readOnly: true,
                 decoration: InputDecoration(
                   labelText: 'Email',
                   labelStyle: TextStyle(color: theme.colorScheme.primary),
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(12),
                     borderSide: BorderSide(color: theme.colorScheme.primary),
                   ),
                   enabledBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(12),
                     borderSide: BorderSide(color: theme.colorScheme.onSurface.withOpacity(0.3)),
                   ),
                   focusedBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(12),
                     borderSide: BorderSide(color: theme.colorScheme.primary),
                   ),
                 ),
                 style: theme.textTheme.bodyLarge?.copyWith(color: theme.colorScheme.onSurface),
               ),
             ],
           ),
           error: (message) => Center(
             child: Text(
               message,
               style: theme.textTheme.bodyLarge?.copyWith(color: theme.colorScheme.error),
             ),
           ),
         );
       },
     ),
            );
  }
}