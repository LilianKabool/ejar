import 'package:bloc/bloc.dart';
import 'package:ejar_v/presentaion/auth/manager/resend_otp/resend_otp_state.dart';


import '../../../../core/params/resend_otp_params.dart';

import 'package:injectable/injectable.dart';

import '../../../../feature/auth/repository/user_repository.dart';

@injectable
class ResendOtpCubit extends Cubit<ResendOtpState> {
  final UserBaseRepository _userBaseRepository;

  ResendOtpCubit(this._userBaseRepository) : super(ResendOtpState.idel());

  emitResendOtp({
    required String email,
  }) async {
    emit(const ResendOtpState.loading());
    final response = await _userBaseRepository.resendOtp(ResendOtpParams(
      email: email,
    ));
    response.fold((l) => emit(ResendOtpState.error(l)),
        (r) => emit(ResendOtpState.success(r)));
  }
}
