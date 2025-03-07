import 'package:cryptohub/features/profile/sub_modules/update_user_phone_number/domain/usecases/update_user_phone_usecase.dart';
import 'package:cryptohub/features/profile/sub_modules/update_user_phone_number/presentation/blocs/add_currency_to_favorite/update_user_phone_event.dart'
    show UpdateUserPhoneEvent;
import 'package:cryptohub/features/profile/sub_modules/update_user_phone_number/presentation/blocs/add_currency_to_favorite/update_user_phone_state.dart'
    show UpdateUserPhoneState;
import 'package:flutter_bloc/flutter_bloc.dart';

class UpdateUserPhoneBloc
    extends Bloc<UpdateUserPhoneEvent, UpdateUserPhoneState> {
  final UpdateUserPhoneUseCase updateUserPhoneUseCase;

  UpdateUserPhoneBloc(this.updateUserPhoneUseCase)
    : super(const UpdateUserPhoneState.initial()) {
    on<UpdateUserPhoneEvent>((event, emit) async {
      await event.when(
        updatePhone: (params) async {
          emit(const UpdateUserPhoneState.loading());
          final result = await updateUserPhoneUseCase(params);
          result.fold(
            (failure) => emit(UpdateUserPhoneState.error(failure.message)),
            (entity) => emit(UpdateUserPhoneState.success(entity)),
          );
        },
      );
    });
  }
}
