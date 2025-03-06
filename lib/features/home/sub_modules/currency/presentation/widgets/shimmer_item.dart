import 'package:flutter/material.dart';

class ShimmerItem extends StatelessWidget {
  const ShimmerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        leading: Container(width: 40, height: 40, color: Colors.grey),
        title: Container(width: 100, height: 16, color: Colors.grey),
        subtitle: Container(width: 50, height: 12, color: Colors.grey),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(width: 60, height: 16, color: Colors.grey),
            const SizedBox(width: 8),
            Container(width: 24, height: 24, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}