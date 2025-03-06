import 'package:cryptohub/core/error/failure.dart';
import 'package:cryptohub/core/usecases/base_usecase.dart';
import 'package:cryptohub/features/profile/domain/entities/user_information_entity.dart';
import 'package:cryptohub/features/profile/domain/usecases/user_information_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'user_information_event.dart';
import 'user_information_state.dart';

class UserInformationBloc extends Bloc<UserInformationEvent, UserInformationState> {
  final UserInformationUseCase getUserInformationUseCase;

  UserInformationBloc(this.getUserInformationUseCase) : super(const UserInformationState.initial()) {
    on<UserInformationEvent>((event, emit) async {
      await event.when(
        fetchUserInformation: () async {
          emit(const UserInformationState.loading());
          final Either<Failure, UserInformationEntity> result = await getUserInformationUseCase(NoParams());
          result.fold(
                (failure) => emit(UserInformationState.error(failure.message)),
                (userInfo) => emit(UserInformationState.loaded(userInfo)),
          );
        },
      );
    });
  }
}