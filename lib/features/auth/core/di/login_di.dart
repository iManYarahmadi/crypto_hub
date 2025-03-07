import 'package:cryptohub/core/di/injection.dart';
import 'package:cryptohub/core/services/api_service.dart';
import 'package:cryptohub/features/auth/login/data/datasources/login_remote_datasource.dart';
import 'package:cryptohub/features/auth/login/data/repositories/login_repository_impl.dart';
import 'package:cryptohub/features/auth/login/domain/repositories/login_repository.dart';
import 'package:cryptohub/features/auth/login/domain/usecases/login_usecase.dart';
import 'package:cryptohub/features/auth/login/presentation/blocs/login/login_bloc.dart';

void loginSetUpDependencies() {
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
}
