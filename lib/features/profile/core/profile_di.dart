import 'package:cryptohub/core/di/injection.dart';
import 'package:cryptohub/core/services/api_service.dart';
import 'package:cryptohub/core/services/storage_service.dart';
import 'package:cryptohub/core/utils/validators/phone_number_validator.dart';
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

void profileSetUpDependencies() {
  ///get user information
  sl.registerLazySingleton<UserInformationRemoteDataSource>(
    () =>
        UserInformationRemoteDataSource(sl<ApiService>(), sl<StorageService>()),
  );

  sl.registerLazySingleton<UserInformationRepository>(
    () => UserInformationRepositoryImpl(sl<UserInformationRemoteDataSource>()),
  );

  sl.registerLazySingleton<UserInformationUseCase>(
    () => UserInformationUseCase(sl<UserInformationRepository>()),
  );

  sl.registerFactory<UserInformationBloc>(
    () => UserInformationBloc(sl<UserInformationUseCase>()),
  );

  ///phone number validation

  sl.registerFactory<PhoneNumberValidator>(() => PhoneNumberValidator());

  sl.registerLazySingleton<UpdateUserPhoneRemoteDataSource>(
    () => UpdateUserPhoneRemoteDataSourceImpl(
      sl<ApiService>(),
      sl<StorageService>(),
    ),
  );

  sl.registerLazySingleton<UpdateUserPhoneRepository>(
    () => UpdateUserPhoneRepositoryImpl(sl<UpdateUserPhoneRemoteDataSource>()),
  );

  sl.registerLazySingleton<UpdateUserPhoneUseCase>(
    () => UpdateUserPhoneUseCase(sl<UpdateUserPhoneRepository>()),
  );
  sl.registerFactory<UpdateUserPhoneBloc>(
    () => UpdateUserPhoneBloc(sl<UpdateUserPhoneUseCase>()),
  );
}
