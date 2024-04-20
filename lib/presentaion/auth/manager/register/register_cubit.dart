import 'package:bloc/bloc.dart';
import 'package:ejar_v/core/params/register_params.dart';
import 'package:ejar_v/presentaion/auth/manager/register/register_state.dart';
import 'package:injectable/injectable.dart';

import '../../../../feature/auth/repository/user_repository.dart';

@injectable
class RegisterCubit extends Cubit<RegisterState> {
  final UserBaseRepository _userBaseRepository;

  RegisterCubit(this._userBaseRepository) : super(RegisterState.idel());

  emitRegister({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
  }) async {
    emit(const RegisterState.loading());
    final response = await _userBaseRepository.register(RegisterParams(
      firstName: firstName,
      lastName: lastName,
      email: email,
      password: password,
    ));
    response.fold((l) => emit(RegisterState.error(l)),
        (r) => emit(RegisterState.success(r)));
  }
}
