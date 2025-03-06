import 'package:cryptohub/features/home/sub_modules/currency/domain/entities/currency_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CurrencyItemWidget extends StatelessWidget {
  final CurrencyEntity currency;

  const CurrencyItemWidget({super.key, required this.currency});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: SvgPicture.network(
          currency.iconAddress,
          width: 40,
          height: 40,
          errorBuilder: (context, error, stackTrace) => const Icon(Icons.error),
        ),
        title: Text(
          currency.name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(currency.symbol),
        trailing: Text(
          '\$${currency.price.toStringAsFixed(2)}',
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}