import 'package:cryptohub/core/utils/ui_constants.dart';
import 'package:flutter/material.dart';

class AppNameSection extends StatelessWidget {
  const AppNameSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      UIConstants.appName,
      style: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.bold,
        color: Theme.of(context).primaryColor,
        letterSpacing: 1.5,
      ),
    );
  }
}
