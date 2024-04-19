import 'package:bloc/bloc.dart';
import 'package:ejar_v/bussiness_logic/verifiy_code/verifiy_code_state.dart';
import 'package:ejar_v/data/repository/verifiy_Code_Repository.dart';



class VerifiyCodeCubit extends Cubit<VerifiyCodeState> {
  VerifiyCodeRepository verifiyCodeRepository;

  VerifiyCodeCubit(this.verifiyCodeRepository) : super(VerifiyCodeState.idel());

  emitVerifiyCode(code) async {
    emit(VerifiyCodeState.loading());
    final response = await verifiyCodeRepository.verifiyCode(code);
    print("this result in cubit $response");
    response.when(success: (data) {

      emit(
        VerifiyCodeState.success(data),
      );

    }, faliure: ( networkExceptions) {
      print("this is errpr in repo $networkExceptions");
      emit(
        VerifiyCodeState.error(networkExceptions),
      );
    });
  }
}
