import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:ejar_v/constant/end_points.dart';

class ForgetPasswordWebService {
  late Dio dio;

  ForgetPasswordWebService(this.dio);

  forgetPasswordFunction(email, ) async {
    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient dioClient) {
      dioClient.badCertificateCallback =
      ((X509Certificate cert, String host, int port) => true);
      return dioClient;
    };
    var response =
    await dio.post("${EndPoints.baseUrl}${EndPoints.forgetPassword}", data: {
      'email': email,

    });
    print("the response in webservice is : $response");
    return response.data;
  }
}
