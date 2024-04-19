import 'package:bloc/bloc.dart';
import 'package:ejar_v/bussiness_logic/resend_otp/resend_otp_state.dart';

import '../../data/repository/forget_password_repository.dart';
import '../../data/repository/resend_otp_repository.dart';


class ResendOtpCubit extends Cubit<ResendOtpState> {
  ResendOtpRepository resendOtpRepository;

  ResendOtpCubit(this.resendOtpRepository)
      : super(ResendOtpState.idel());

  emitForResendOtp(
      email,
      ) async {
    emit(ResendOtpState.loading());
    final response =
    await resendOtpRepository.emitForResendOtp(email);
    print("this result in cubit $response");
    response.when(success: (data) {
      emit(
        ResendOtpState.success(data),
      );
    }, faliure: ( networkExceptions) {
      print("this is errpr in repo $networkExceptions");
      emit(
        ResendOtpState.error(networkExceptions),
      );
    });
  }
}
