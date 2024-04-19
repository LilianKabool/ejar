import 'package:bloc/bloc.dart';
import 'package:ejar_v/bussiness_logic/reset_password/reset_password_state.dart';

import '../../data/repository/reset_password_repository.dart';

class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  ResetPasswordRepository resetPasswordRepository;

  ResetPasswordCubit(this.resetPasswordRepository) : super(ResetPasswordState.idel());

  emitResetPassword(otp , password , confirmPassword) async {
    emit(ResetPasswordState.loading());
    final response = await resetPasswordRepository.resetPassword(otp , password , confirmPassword);
    print("this result in cubit $response");
    response.when(success: (data) {
      emit(
        ResetPasswordState.success(data),
      );
    }, faliure: ( networkExceptions) {
      print("this is error in cubiiiiittttttttttttttttttt $networkExceptions");
      emit(
        ResetPasswordState.error(networkExceptions),
      );
    });
  }
}
