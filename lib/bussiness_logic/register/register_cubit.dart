import 'package:bloc/bloc.dart';
import 'package:ejar_v/bussiness_logic/register/register_state.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../data/repository/register_repository.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterRepository registerRepository;

  RegisterCubit(this.registerRepository) : super(RegisterState.idel());

  emitRegister(firstName , lastName , email, password) async {
    emit(RegisterState.loading());
    final response = await registerRepository.register(firstName,lastName , email , password);
    print("this result in cubit $response");
    response.when(success: (data) async {
      final pref = await SharedPreferences.getInstance();
      print("here is token before set ${data['token']}");
      pref.setString("token", "${data['token']}");
      print("this is token : ${pref.get("token")}");
      emit(
        RegisterState.success(data),
      );

    }, faliure: ( networkExceptions) {
      print("this is errpr in repo $networkExceptions");
      emit(
        RegisterState.error(networkExceptions),
      );
    });
  }
}
