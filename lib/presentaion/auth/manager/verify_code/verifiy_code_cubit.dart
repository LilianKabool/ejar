import 'package:bloc/bloc.dart';
import 'package:ejar_v/core/params/verify_otp_params.dart';
import 'package:ejar_v/presentaion/auth/manager/verify_code/verifiy_code_state.dart';
import 'package:injectable/injectable.dart';

import '../../../../feature/auth/repository/auth_repository.dart';

@injectable
class VerifiyCodeCubit extends Cubit<VerifiyCodeState> {
  final AuthBaseRepository _authBaseRepository;

  VerifiyCodeCubit(this._authBaseRepository) : super(VerifiyCodeState.idel());

  emitVerifyCode({
    required String otp,
  }) async {
    emit(const VerifiyCodeState.loading());
    final response = await _authBaseRepository.verifyOtp(VerifyOtpParams(
      otp: otp,
    ));
    response.fold((l) => emit(VerifiyCodeState.error(l)),
        (r) => emit(VerifiyCodeState.success(r)));
  }
}
