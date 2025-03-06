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

  //Theme
  sl.registerLazySingleton<ThemeCubit>(() => ThemeCubit());
}
