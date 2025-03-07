import 'package:cryptohub/features/home/sub_modules/currency/domain/entities/currency_entity.dart';
import 'package:cryptohub/features/home/sub_modules/currency/presentation/blocs/currency/currency_bloc.dart';
import 'package:cryptohub/features/home/sub_modules/currency/presentation/blocs/currency/currency_event.dart';
import 'package:cryptohub/features/home/sub_modules/currency/presentation/blocs/currency/currency_state.dart';
import 'package:cryptohub/features/home/sub_modules/currency/presentation/widgets/currency_item_widget.dart';
import 'package:cryptohub/features/home/sub_modules/currency/presentation/widgets/error_message.dart';
import 'package:cryptohub/features/home/sub_modules/currency/presentation/widgets/section_divider.dart'
    show SectionDivider;
import 'package:cryptohub/features/home/sub_modules/currency/presentation/widgets/section_header.dart';
import 'package:cryptohub/features/home/sub_modules/currency/presentation/widgets/shimmer_list.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/add_currency_to_favorite/data/params/add_currency_to_favorite_params.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/add_currency_to_favorite/presentation/blocs/add_currency_to_favorite/add_currency_to_favorite_bloc.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/add_currency_to_favorite/presentation/blocs/add_currency_to_favorite/add_currency_to_favorite_event.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/add_currency_to_favorite/presentation/blocs/add_currency_to_favorite/add_currency_to_favorite_state.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/delete_currency_from_favorite/data/params/delete_currency_from_favorite_params.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/delete_currency_from_favorite/presentation/blocs/delete_currency_to_favorite/delete_currency_from_favorite_bloc.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/delete_currency_from_favorite/presentation/blocs/delete_currency_to_favorite/delete_currency_from_favorite_event.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/delete_currency_from_favorite/presentation/blocs/delete_currency_to_favorite/delete_currency_from_favorite_state.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/get_favorite_currency/domain/entities/favorite_currency_entity.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/get_favorite_currency/presentation/blocs/get_favorite_currency/get_favorite_currencies_bloc.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/get_favorite_currency/presentation/blocs/get_favorite_currency/get_favorite_currencies_event.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/get_favorite_currency/presentation/blocs/get_favorite_currency/get_favorite_currencies_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CurrencySection extends StatelessWidget {
  const CurrencySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: MultiBlocListener(
          listeners: [
            BlocListener<AddCurrencyToFavoriteBloc, AddCurrencyToFavoriteState>(
              listener:
                  (context, state) => state.maybeWhen(
                    success: (_) {
                      _showSnackBar(
                        context,
                        'Added to favorites!',
                        isSuccess: true,
                      );
                      _refreshData(context);
                      return SizedBox();
                    },
                    error:
                        (message) => _showSnackBar(
                          context,
                          'Error adding to favorites: $message',
                          isSuccess: false,
                        ),
                    orElse: () => SizedBox(),
                  ),
            ),
            BlocListener<
              DeleteCurrencyFromFavoriteBloc,
              DeleteCurrencyFromFavoriteState
            >(
              listener:
                  (context, state) => state.maybeWhen(
                    success: (_) {
                      _showSnackBar(
                        context,
                        'Removed from favorites!',
                        isSuccess: true,
                      );
                      _refreshData(context);
                      return SizedBox();
                    },
                    error:
                        (message) => _showSnackBar(
                          context,
                          'Error removing from favorites: $message',
                          isSuccess: false,
                        ),
                    orElse: () => SizedBox(),
                  ),
            ),
          ],
          child: BlocBuilder<CurrencyBloc, CurrencyState>(
            builder: (context, currencyState) {
              return currencyState.when(
                initial: () => const SizedBox.shrink(),
                loading: () => const ShimmerList(),
                loaded:
                    (currencies) => BlocBuilder<
                      GetFavoriteCurrenciesBloc,
                      GetFavoriteCurrenciesState
                    >(
                      builder: (context, favoriteState) {
                        final favorites = favoriteState.maybeWhen(
                          success: (favorites) => favorites,
                          orElse: () => <FavoriteCurrencyEntity>[],
                        );

                        final favoriteCurrencies =
                            currencies
                                .where(
                                  (c) => favorites.any(
                                    (f) => f.cryptocurrencyId == c.id,
                                  ),
                                )
                                .toList();
                        final otherCurrencies =
                            currencies
                                .where(
                                  (c) =>
                                      !favorites.any(
                                        (f) => f.cryptocurrencyId == c.id,
                                      ),
                                )
                                .toList();

                        return ListView(
                          children: [
                            if (favoriteCurrencies.isNotEmpty) ...[
                              const SectionHeader(title: 'Favorite Currencies'),
                              ListView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: favoriteCurrencies.length,
                                itemBuilder:
                                    (_, index) => CurrencyItem(
                                      currency: favoriteCurrencies[index],
                                      favorites: favorites,
                                      onFavoriteToggle:
                                          (currency, favoriteId) =>
                                              _toggleFavorite(
                                                context,
                                                currency,
                                                favoriteId,
                                              ),
                                    ),
                              ),
                              const SectionDivider(),
                            ],
                            const SectionHeader(title: 'All Currencies'),
                            ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount:
                                  favoriteCurrencies.isNotEmpty
                                      ? otherCurrencies.length
                                      : currencies.length,
                              itemBuilder:
                                  (_, index) => CurrencyItem(
                                    currency:
                                        favoriteCurrencies.isNotEmpty
                                            ? otherCurrencies[index]
                                            : currencies[index],
                                    favorites: favorites,
                                    onFavoriteToggle:
                                        (currency, favoriteId) =>
                                            _toggleFavorite(
                                              context,
                                              currency,
                                              favoriteId,
                                            ),
                                  ),
                            ),
                          ],
                        );
                      },
                    ),
                error: (message) => ErrorMessage(message: message),
              );
            },
          ),
        ),
      ),
    );
  }

  void _showSnackBar(
    BuildContext context,
    String message, {
    required bool isSuccess,
  }) {
    final theme = Theme.of(context);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: TextStyle(
            color:
                isSuccess
                    ? theme.colorScheme.onPrimary
                    : theme.colorScheme.onError,
          ),
        ),
        backgroundColor:
            isSuccess ? theme.colorScheme.primary : theme.colorScheme.error,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }

  void _refreshData(BuildContext context) {
    context.read<GetFavoriteCurrenciesBloc>().add(
      const GetFavoriteCurrenciesEvent.fetchFavoriteCurrencies(),
    );
    context.read<CurrencyBloc>().add(const CurrencyEvent.fetchCurrencies());
  }

  void _toggleFavorite(
    BuildContext context,
    CurrencyEntity currency,
    int? favoriteId,
  ) {
    if (currency.isFavorite == true) {
      if (favoriteId != null) {
        context.read<DeleteCurrencyFromFavoriteBloc>().add(
          DeleteCurrencyFromFavoriteEvent.deleteCurrencyFromFavorite(
            DeleteCurrencyFromFavoriteParams(favoritesId: favoriteId),
          ),
        );
      }
    } else {
      context.read<AddCurrencyToFavoriteBloc>().add(
        AddCurrencyToFavoriteEvent.addCurrencyToFavorite(
          AddCurrencyToFavoriteParams(cryptocurrencyId: currency.id),
        ),
      );
    }
  }
}
