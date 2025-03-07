import 'package:cryptohub/features/home/sub_modules/currency/presentation/widgets/shimmer_item.dart'
    show ShimmerItem;
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerList extends StatelessWidget {
  const ShimmerList({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListView.builder(
      itemCount: 5,
      itemBuilder:
          (_, __) => Shimmer.fromColors(
            baseColor: theme.colorScheme.surface,
            highlightColor: theme.colorScheme.surface.withValues(alpha: 0.5),
            child: const ShimmerItem(),
          ),
    );
  }
}
