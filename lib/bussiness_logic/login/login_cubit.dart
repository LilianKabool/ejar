


import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../data/repository/login_repository.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginRepository loginRepository;

  LoginCubit(this.loginRepository) : super(const Idel());

  emitLogin(email, password) async {
    emit(const LoginState.loading());
    final response = await loginRepository.login(email, password);
    print("this result in cubit $response");
    response.when(success: (data) async {
      // WidgetsFlutterBinding.ensureInitialized();
      final pref = await SharedPreferences.getInstance();
      print("here is token before set ${data['token']}");
      pref.setString("token", "${data['token']}");
      print("this is token : ${pref.get("token")}");
      emit(
        LoginState.success(data),);

    }, faliure: (networkExceptions) {
      print("this is error in repo $networkExceptions");
      emit(
        LoginState.error(networkExceptions),
      );
    });
  }
}
