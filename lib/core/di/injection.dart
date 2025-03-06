import 'package:cryptohub/core/services/api_service.dart';
import 'package:cryptohub/core/services/storage_service.dart';
import 'package:cryptohub/features/auth/login/data/datasources/login_remote_datasource.dart';
import 'package:cryptohub/features/auth/login/data/repositories/login_repository_impl.dart';
import 'package:cryptohub/features/auth/login/domain/repositories/login_repository.dart';
import 'package:cryptohub/features/auth/login/domain/usecases/login_usecase.dart';
import 'package:cryptohub/features/auth/login/presentation/blocs/login/login_bloc.dart';
import 'package:cryptohub/features/home/sub_modules/currency/data/datasources/currency_remote_datasource.dart';
import 'package:cryptohub/features/home/sub_modules/currency/data/repositories/currency_repository_impl.dart';
import 'package:cryptohub/features/home/sub_modules/currency/domain/repositories/currency_repository.dart';
import 'package:cryptohub/features/home/sub_modules/currency/domain/usecases/currency_usecase.dart';
import 'package:cryptohub/features/home/sub_modules/currency/presentation/blocs/login/currency_bloc.dart';
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
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/get_favorite_currency/domain/usecases/get_favorite_currencies_usecase.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/get_favorite_currency/presentation/blocs/get_favorite_currency/get_favorite_currencies_bloc.dart';
import 'package:cryptohub/presentation/blocs/themes/theme_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final GetIt sl = GetIt.instance;

void setupDependencies() {
  sl.registerLazySingleton<StorageService>(() => StorageService());
  sl.registerLazySingleton<Dio>(() => Dio());
  sl.registerLazySingleton<ApiService>(() => ApiService(sl<Dio>()));
  sl.registerLazySingleton<LoginRemoteDataSource>(
    () => LoginRemoteDataSource(sl<ApiService>()),
  );
  sl.registerLazySingleton<LoginRepository>(
    () => LoginRepositoryImpl(remoteDataSource: sl<LoginRemoteDataSource>()),
  );
  sl.registerLazySingleton<LoginUseCase>(
    () => LoginUseCase(sl<LoginRepository>()),
  );
  sl.registerFactory<LoginBloc>(() => LoginBloc(sl<LoginUseCase>()));

  // Home Feature
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
  // AddCurrencyToFavorite Feature
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
  // DeleteCurrencyFromFavorite Feature
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
  // GetFavoriteCurrencies Feature
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
  //Theme
  sl.registerLazySingleton<ThemeCubit>(() => ThemeCubit());
}
