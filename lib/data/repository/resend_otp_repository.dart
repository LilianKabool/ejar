
import 'package:ejar_v/data/model/network_exceptions.dart';

import '../../bussiness_logic/Api_result/api_result.dart';
import '../web_services/ResendOtpWebService.dart';

class ResendOtpRepository {
  final ResendOtpWebService resendOtpWebService;

  ResendOtpRepository(this.resendOtpWebService);

  Future emitForResendOtp(email, ) async {
    try {
      final response = await resendOtpWebService.emitReseedOtpFunction(email,);
      print("---------------------response in repository $response");
      return ApisResult.success(response);
    } catch (error) {
      print("this is errpr in repo $error"); final excepion =NetworkExceptions.getDioException(error);
      print("exception is here ${excepion}");
      return ApisResult.faliure(excepion);
    }
  }
}
