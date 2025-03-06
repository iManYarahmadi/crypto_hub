import 'package:cryptohub/features/auth/login/data/params/login_params_model.dart';
import 'package:cryptohub/features/auth/login/domain/usecases/login_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show Bloc;

import 'login_event.dart';
import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUseCase loginUseCase;

  LoginBloc(this.loginUseCase) : super(const LoginState.initial()) {
    on<LoginEvent>((event, emit) async {
      await event.when(
        loginSubmitted: (email, password) async {
          emit(const LoginState.loading());
          final result = await loginUseCase(LoginParamsModel(email: email, password: password));
          result.fold(
                (failure) => emit(LoginState.error(failure.message)),
                (loginEntity) => emit(LoginState.success(loginEntity)),
          );
        },
      );
    });
  }
}