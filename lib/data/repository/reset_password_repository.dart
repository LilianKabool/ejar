

import '../../bussiness_logic/Api_result/api_result.dart';
import '../model/network_exceptions.dart';
import '../web_services/reset_password_web_service.dart';

class ResetPasswordRepository {
  final ResetWebService resetWebService;

  ResetPasswordRepository(this.resetWebService);

  Future resetPassword( otp , password , confirmPassword) async {
    try {
      final response = await resetWebService.resetPassword(otp , password , confirmPassword);
      print("---------------------response in repository $response");
      return ApisResult.success(response);
    } catch (error) {
      print("===============================================this is error in repo $error");
      final excepion =NetworkExceptions.getDioException(error);
      print("-------------------------exception is here ${excepion}");
      return ApisResult.faliure(excepion);
    }
  }
}
