import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:ejar_v/core/api/api_consumer.dart';
import 'package:ejar_v/data/model/error_model.dart';
import 'package:ejar_v/data/model/login_model.dart';
import 'package:injectable/injectable.dart';

import '../../core/constant/end_points.dart';
//!Mhamad make this changes..
abstract class BaseAuthWebService{
  Future<LoginModel> login(String email,String password);
}



@Singleton(as: BaseAuthWebService)
class AuthWebServiceImpl implements BaseAuthWebService{
  final ApiConsumer _apiConsumer;

  AuthWebServiceImpl({required ApiConsumer apiConsumer}) : _apiConsumer = apiConsumer;
  @override
  Future<LoginModel> login(String email, String password) async{
    final response =await _apiConsumer.post("${EndPoints.baseUrl}${EndPoints.login}",queryParameters: {
       'email': email,
      'password': password,
    });
    return LoginModel.fromJson(response);
  }
}




class LoginWebService {
  late Dio dio;

  LoginWebService(this.dio);

  login(email, password) async {
    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient dioClient) {
      dioClient.badCertificateCallback =
          ((X509Certificate cert, String host, int port) => true);
      return dioClient;
    };

    var response =
        await dio.post("${EndPoints.baseUrl}${EndPoints.login}", data: {
      'email': email,
      'password': password,
    });
    print("the response in webservice is : ${response.data}");
    return response.data;
  }
}
