
import 'package:ejar_v/bussiness_logic/Api_result/api_result.dart';
import 'package:ejar_v/data/model/network_exceptions.dart';
import 'package:ejar_v/data/web_services/login_web_Service.dart';

class LoginRepository {
  final LoginWebService loginWebService;

  LoginRepository(this.loginWebService);

  Future login(email, password) async {
    try {
      final response = await loginWebService.login(email, password);
      print("---------------------response in repository $response");

      return response;
    } catch (error) {
      print("---------------------------------------this is error in repo $error");
       final excepion =NetworkExceptions.getDioException(error);
       print("exception is here ${excepion}");
        return ApisResult.faliure(excepion);
      }
    }

}