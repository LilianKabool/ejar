
import 'package:ejar_v/data/model/network_exceptions.dart';

import '../../bussiness_logic/Api_result/api_result.dart';
import '../web_services/register_web_service.dart';

class RegisterRepository {
  final RegisterWebService registerWebService;

  RegisterRepository(this.registerWebService);

  Future register( firstName , lastName , email, password) async {
    try {
      final response = await registerWebService.register(firstName , lastName ,email, password);
      print("---------------------response in repository $response");
      return ApisResult.success(response);
    } catch (error) {
      final excepion =NetworkExceptions.getDioException(error);
      print("exception is here ${excepion}");
      return ApisResult.faliure(excepion);
    }
  }
}
