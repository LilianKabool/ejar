
import 'package:ejar_v/data/model/error_model.dart';
import 'package:ejar_v/data/model/network_exceptions.dart';
import 'package:ejar_v/data/web_services/forget_password_web_service.dart';

import '../../bussiness_logic/Api_result/api_result.dart';

class ForgetPasswordRepository {
  final ForgetPasswordWebService forgetPasswordWebService;

  ForgetPasswordRepository(this.forgetPasswordWebService);

  Future forgetPasswordFunction(email, ) async {
    try {
      final response = await forgetPasswordWebService.forgetPasswordFunction(email,);
      print("---------------------response in repository $response");
      return ApisResult.success(response);
    } catch (error) {
      print("this is errpr in repo $error"); final excepion =NetworkExceptions.getDioException(error);
      print("exception is here ${excepion}");
      return ApisResult.faliure(excepion);
    }
  }
}
