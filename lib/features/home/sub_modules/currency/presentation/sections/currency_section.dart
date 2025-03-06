import 'package:cryptohub/core/di/injection.dart';
import 'package:cryptohub/core/utils/ui_constants.dart';
import 'package:cryptohub/features/home/sub_modules/currency/presentation/blocs/login/currency_bloc.dart';
import 'package:cryptohub/features/home/sub_modules/currency/presentation/blocs/login/currency_event.dart';
import 'package:cryptohub/features/home/sub_modules/currency/presentation/blocs/login/currency_state.dart';
import 'package:cryptohub/features/home/sub_modules/currency/presentation/widgets/currency_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CurrencySection extends StatelessWidget {
  const CurrencySection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<CurrencyBloc>()..add(const CurrencyEvent.fetchCurrencies()),
      child: Scaffold(
        appBar: AppBar(
          title: Text(UIConstants.appName),
          centerTitle: true,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: BlocBuilder<CurrencyBloc, CurrencyState>(
            builder: (context, state) {
              return state.when(
                initial: () => const SizedBox.shrink(),
                loading: () => const Center(child: CircularProgressIndicator()),
                loaded: (currencies) => ListView.builder(
                  itemCount: currencies.length,
                  itemBuilder: (context, index) {
                    final currency = currencies[index];
                    return CurrencyItemWidget(currency: currency);
                  },
                ),
                error: (message) => Center(child: Text(message)),
              );
            },
          ),
        ),
      ),
    );
  }
}

