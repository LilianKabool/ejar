

import 'package:ejar_v/data/model/network_exceptions.dart';

import '../../bussiness_logic/Api_result/api_result.dart';
import '../web_services/verifiy_code_web_sevice.dart';

class VerifiyCodeRepository {
  final VerifiyCodeWebService verifiyCodeWebService;

  VerifiyCodeRepository(this.verifiyCodeWebService);

  Future verifiyCode(code) async {
    try {
      final response = await verifiyCodeWebService.verifiyCode(code);
      print("---------------------response in repository $response");
      return ApisResult.success(response);
    } catch (error) {
      print("this is errpr in repo $error");
      final excepion =NetworkExceptions.getDioException(error);
      print("exception is here ${excepion}");
      return ApisResult.faliure(excepion);
    }
  }
}
