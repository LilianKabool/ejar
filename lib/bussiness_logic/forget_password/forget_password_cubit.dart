import 'package:bloc/bloc.dart';

import '../../data/repository/forget_password_repository.dart';
import 'forget_password_state.dart';


class ForgetPasswordCubit extends Cubit<ForgetPasswordState> {
  ForgetPasswordRepository forgetPasswordRepository;

  ForgetPasswordCubit(this.forgetPasswordRepository)
      : super(ForgetPasswordState.idel());

  emitForgetPassword(
    email,
  ) async {
    emit(ForgetPasswordState.loading());
    final response =
        await forgetPasswordRepository.forgetPasswordFunction(email);
    print("this result in cubit $response");
    response.when(success: (data) {
      emit(
        ForgetPasswordState.success(data),
      );
    }, faliure: ( networkExceptions) {
      print("this is errpr in repo $networkExceptions");
      emit(
        ForgetPasswordState.error(networkExceptions),
      );
    });
  }
}
