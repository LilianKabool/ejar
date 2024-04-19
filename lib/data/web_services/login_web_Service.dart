import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:ejar_v/data/model/error_model.dart';
import 'package:ejar_v/data/model/login_model.dart';

import '../../constant/end_points.dart';

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
