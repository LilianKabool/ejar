import 'package:bloc/bloc.dart';
import 'package:ejar_v/core/params/reset_password_params.dart';
import 'package:ejar_v/presentaion/auth/manager/reset_password/reset_password_state.dart';
import 'package:injectable/injectable.dart';

import '../../../../feature/auth/repository/user_repository.dart';

@injectable
class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  final UserBaseRepository _userBaseRepository;

  ResetPasswordCubit(this._userBaseRepository)
      : super(ResetPasswordState.idel());

  emitResetOtp({
    required String otp,
    required String password,
    required String passwordConfirmation,
  }) async {
    emit(const ResetPasswordState.loading());
    final response = await _userBaseRepository.resetPassword(ResetPasswordParams(
      otp: otp, password: password, passwordConfirmation: passwordConfirmation,
    ));
    response.fold((l) => emit(ResetPasswordState.error(l)),
            (r) => emit(ResetPasswordState.success(r)));
  }
}
