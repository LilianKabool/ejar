import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:ejar_v/core/constant/end_points.dart';

class ResetWebService {
  late Dio dio;

  ResetWebService(this.dio);

  resetPassword(otp, password , confirmPassword ) async {
    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient dioClient) {
      dioClient.badCertificateCallback =
      ((X509Certificate cert, String host, int port) => true);
      return dioClient;
    };
    var response =
    await dio.post("${EndPoints.baseUrl}${EndPoints.resetPassword}", data: {
      'otp': otp,
      'password': password,
      'password_confirmation': confirmPassword,
    });
    print("the response in webservice is *****************************: $response");
    return response.data;
  }
}
