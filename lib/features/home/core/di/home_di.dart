import 'package:cryptohub/core/di/injection.dart';
import 'package:cryptohub/core/services/api_service.dart';
import 'package:cryptohub/core/services/storage_service.dart';
import 'package:cryptohub/features/home/sub_modules/currency/data/datasources/currency_remote_datasource.dart';
import 'package:cryptohub/features/home/sub_modules/currency/data/repositories/currency_repository_impl.dart';
import 'package:cryptohub/features/home/sub_modules/currency/domain/repositories/currency_repository.dart';
import 'package:cryptohub/features/home/sub_modules/currency/domain/usecases/currency_usecase.dart';
import 'package:cryptohub/features/home/sub_modules/currency/presentation/blocs/currency/currency_bloc.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/add_currency_to_favorite/data/datasources/add_currency_to_favorite_remote_datasource.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/add_currency_to_favorite/data/repositories/add_currency_to_favorite_repository_impl.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/add_currency_to_favorite/domain/repositories/add_currency_to_favorite_repository.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/add_currency_to_favorite/domain/usecases/add_currency_to_favorite_usecase.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/add_currency_to_favorite/presentation/blocs/add_currency_to_favorite/add_currency_to_favorite_bloc.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/delete_currency_from_favorite/data/datasources/delete_currency_from_favorite_remote_datasource.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/delete_currency_from_favorite/data/repositories/delete_currency_from_favorite_repository_impl.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/delete_currency_from_favorite/domain/repositories/delete_currency_from_favorite_repository.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/delete_currency_from_favorite/domain/usecases/delete_currency_from_favorite_usecase.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/delete_currency_from_favorite/presentation/blocs/delete_currency_to_favorite/delete_currency_from_favorite_bloc.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/get_favorite_currency/data/datasources/get_favorite_currencies_remote_datasource.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/get_favorite_currency/data/repositories/get_favorite_currencies_repository_impl.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/get_favorite_currency/domain/repositories/get_favorite_currencies_repository.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/get_favorite_currency/domain/usecases/get_favorite_currencies_usecase.dart'
    show GetFavoriteCurrenciesUseCase;
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/get_favorite_currency/presentation/blocs/get_favorite_currency/get_favorite_currencies_bloc.dart';

void homeSetUpDependencies() {
  ///Get currency
  sl.registerLazySingleton<CurrencyRemoteDataSource>(
    () => CurrencyRemoteDataSource(sl<ApiService>(), sl<StorageService>()),
  );
  sl.registerLazySingleton<CurrencyRepository>(
    () => CurrencyRepositoryImpl(sl<CurrencyRemoteDataSource>()),
  );
  sl.registerLazySingleton<GetCurrenciesUseCase>(
    () => GetCurrenciesUseCase(sl<CurrencyRepository>()),
  );
  sl.registerFactory<CurrencyBloc>(
    () => CurrencyBloc(sl<GetCurrenciesUseCase>()),
  );
  /// AddCurrencyToFavorite Feature
  sl.registerLazySingleton<AddCurrencyToFavoriteRemoteDataSource>(
    () => AddCurrencyToFavoriteRemoteDataSource(
      sl<ApiService>(),
      sl<StorageService>(),
    ),
  );
  sl.registerLazySingleton<AddCurrencyToFavoriteRepository>(
    () => AddCurrencyToFavoriteRepositoryImpl(
      sl<AddCurrencyToFavoriteRemoteDataSource>(),
    ),
  );
  sl.registerLazySingleton<AddCurrencyToFavoriteUseCase>(
    () => AddCurrencyToFavoriteUseCase(sl<AddCurrencyToFavoriteRepository>()),
  );
  sl.registerFactory<AddCurrencyToFavoriteBloc>(
    () => AddCurrencyToFavoriteBloc(sl<AddCurrencyToFavoriteUseCase>()),
  );
  //
  /// DeleteCurrencyFromFavorite Feature
  sl.registerLazySingleton<DeleteCurrencyFromFavoriteRemoteDataSource>(
    () => DeleteCurrencyFromFavoriteRemoteDataSource(
      sl<ApiService>(),
      sl<StorageService>(),
    ),
  );
  sl.registerLazySingleton<DeleteCurrencyFromFavoriteRepository>(
    () => DeleteCurrencyFromFavoriteRepositoryImpl(
      sl<DeleteCurrencyFromFavoriteRemoteDataSource>(),
    ),
  );
  sl.registerLazySingleton<DeleteCurrencyFromFavoriteUseCase>(
    () => DeleteCurrencyFromFavoriteUseCase(
      sl<DeleteCurrencyFromFavoriteRepository>(),
    ),
  );
  sl.registerFactory<DeleteCurrencyFromFavoriteBloc>(
    () =>
        DeleteCurrencyFromFavoriteBloc(sl<DeleteCurrencyFromFavoriteUseCase>()),
  );
  /// GetFavoriteCurrencies Feature
  sl.registerLazySingleton<GetFavoriteCurrenciesRemoteDataSource>(
    () => GetFavoriteCurrenciesRemoteDataSource(
      sl<ApiService>(),
      sl<StorageService>(),
    ),
  );
  sl.registerLazySingleton<GetFavoriteCurrenciesRepository>(
    () => GetFavoriteCurrenciesRepositoryImpl(
      sl<GetFavoriteCurrenciesRemoteDataSource>(),
    ),
  );
  sl.registerLazySingleton<GetFavoriteCurrenciesUseCase>(
    () => GetFavoriteCurrenciesUseCase(sl<GetFavoriteCurrenciesRepository>()),
  );
  sl.registerFactory<GetFavoriteCurrenciesBloc>(
    () => GetFavoriteCurrenciesBloc(sl<GetFavoriteCurrenciesUseCase>()),
  );
}
