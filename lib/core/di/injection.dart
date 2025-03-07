import 'package:cryptohub/core/services/api_service.dart';
import 'package:cryptohub/core/services/storage_service.dart';
import 'package:cryptohub/core/utils/validators/phone_number_validator.dart';
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
import 'package:cryptohub/features/profile/sub_modules/update_user_phone_number/data/datasources/update_user_phone_remote_datasource.dart';
import 'package:cryptohub/features/profile/sub_modules/update_user_phone_number/data/repositories/update_user_phone_repository_impl.dart';
import 'package:cryptohub/features/profile/sub_modules/update_user_phone_number/domain/repositories/update_user_phone_repository.dart';
import 'package:cryptohub/features/profile/sub_modules/update_user_phone_number/domain/usecases/update_user_phone_usecase.dart';
import 'package:cryptohub/features/profile/sub_modules/update_user_phone_number/presentation/blocs/add_currency_to_favorite/update_user_phone_bloc.dart';
import 'package:cryptohub/features/profile/sub_modules/user_information/data/datasources/user_information_remote_datasource.dart';
import 'package:cryptohub/features/profile/sub_modules/user_information/data/repositories/user_information_repository_impl.dart';
import 'package:cryptohub/features/profile/sub_modules/user_information/domain/repositories/user_information_repository.dart';
import 'package:cryptohub/features/profile/sub_modules/user_information/domain/usecases/user_information_usecase.dart';
import 'package:cryptohub/features/profile/sub_modules/user_information/presentation/blocs/user_information/user_information_bloc.dart';
import 'package:cryptohub/presentation/blocs/themes/theme_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final GetIt sl = GetIt.instance;

void setupDependencies() {
  sl.registerLazySingleton<StorageService>(() => StorageService());
  sl.registerLazySingleton<Dio>(() => Dio());
  sl.registerLazySingleton<ApiService>(() => ApiService(sl<Dio>()));

  // Home Feature


  //Theme
  sl.registerLazySingleton<ThemeCubit>(() => ThemeCubit());
}
