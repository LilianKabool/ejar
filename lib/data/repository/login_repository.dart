
import 'package:dartz/dartz.dart';
import 'package:ejar_v/bussiness_logic/Api_result/api_result.dart';
import 'package:ejar_v/core/network/network_info.dart';
import 'package:ejar_v/data/model/login_model.dart';
import 'package:ejar_v/data/model/network_exceptions.dart';
import 'package:ejar_v/data/web_services/login_web_Service.dart';
import 'package:injectable/injectable.dart';


abstract class AuthBaseRepository{
  Future<Either<NetworkExceptions,LoginModel>>logIn(String email,String password);
} 

@Singleton(as: AuthBaseRepository)
class AuthRepositoryImpl implements AuthBaseRepository {
  final NetworkInfo _networkInfo;
  final BaseAuthWebService _baseAuthWebService;

  AuthRepositoryImpl({required NetworkInfo networkInfo, required BaseAuthWebService baseAuthWebService}) : _networkInfo = networkInfo, _baseAuthWebService = baseAuthWebService;
  @override
  Future<Either<NetworkExceptions, LoginModel>> logIn(String email, String password) async{
   try{
      if(await _networkInfo.isConnected){
        final response = await _baseAuthWebService.login(email,password);
        return Right(response);
      }else{
        return const Left(NetworkExceptions.noInternetConnection());
      }
    } on Exception catch (ex){
      return Left(NetworkExceptions.getDioException(ex));
    }
  }
}


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