import 'package:collection/collection.dart';
import 'package:cryptohub/features/home/sub_modules/currency/domain/entities/currency_entity.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/get_favorite_currency/domain/entities/favorite_currency_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CurrencyItem extends StatelessWidget {
  final CurrencyEntity currency;
  final List<FavoriteCurrencyEntity> favorites;
  final void Function(CurrencyEntity currency, int? favoriteId)
  onFavoriteToggle;

  const CurrencyItem({
    super.key,
    required this.currency,
    required this.favorites,
    required this.onFavoriteToggle,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final favoriteId =
        favorites
            .firstWhereOrNull((f) => f.cryptocurrencyId == currency.id)
            ?.id;

    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      color: theme.cardColor,
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 8.0,
        ),
        leading: SvgPicture.network(
          currency.iconAddress,
          width: 40,
          height: 40,
          placeholderBuilder:
              (_) => CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  theme.colorScheme.primary,
                ),
              ),
          errorBuilder: (context, error, stackTrace) {
            return SizedBox(
              height: 40,
              width: 40,
              child: Icon(Icons.safety_check),
            );
          },
          semanticsLabel: '${currency.name} icon',
        ),
        title: Text(
          currency.name,
          style: theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: theme.colorScheme.onSurface,
          ),
        ),
        subtitle: Text(
          currency.symbol,
          style: theme.textTheme.bodyMedium?.copyWith(
            color: theme.colorScheme.onSurface.withOpacity(0.7),
          ),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '\$${currency.price.toStringAsFixed(2)}',
              style: theme.textTheme.bodyLarge?.copyWith(
                color: theme.colorScheme.onSurface,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(width: 8),
            IconButton(
              icon: Icon(
                currency.isFavorite == true
                    ? Icons.favorite
                    : Icons.favorite_border,
                color:
                    currency.isFavorite == true
                        ? Colors.redAccent
                        : theme.colorScheme.onSurface.withOpacity(0.5),
              ),
              onPressed: () => onFavoriteToggle(currency, favoriteId),
            ),
          ],
        ),
      ),
    );
  }
}
