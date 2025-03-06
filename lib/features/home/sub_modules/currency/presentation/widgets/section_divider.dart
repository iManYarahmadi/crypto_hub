import 'package:flutter/material.dart';

class SectionDivider extends StatelessWidget {
  const SectionDivider({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Divider(
      color: theme.colorScheme.onSurface.withOpacity(0.2),
      thickness: 1,
      height: 32,
    );
  }
}
