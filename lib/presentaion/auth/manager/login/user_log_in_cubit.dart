import 'package:bloc/bloc.dart';
import 'package:ejar_v/core/params/Login_params.dart';
import 'package:ejar_v/presentaion/auth/manager/login/user_log_in_state.dart';

import 'package:injectable/injectable.dart';

import '../../../../feature/auth/repository/user_repository.dart';

@injectable
class UserLogInCubit extends Cubit<UserLogInState> {
  final UserBaseRepository _userBaseRepository;

  UserLogInCubit(this._userBaseRepository)
      : super(const UserLogInState.initial());

  emitLogInUser({required String email, required String password}) async {
    emit(const UserLogInState.loading());
    final response = await _userBaseRepository
        .login(LoginParams(email: email, password: password));
    response.fold((l) => emit(UserLogInState.error(l)),
        (r) => emit(UserLogInState.success(r)));
  }
}
