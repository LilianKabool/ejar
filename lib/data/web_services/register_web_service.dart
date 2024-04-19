import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:ejar_v/core/constant/end_points.dart';

class RegisterWebService {
  late Dio dio;

  RegisterWebService(this.dio);

  register(firstName, lastName, email, password) async {
    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient dioClient) {
      dioClient.badCertificateCallback =
          ((X509Certificate cert, String host, int port) => true);
      return dioClient;
    };
    var response =
        await dio.post("${EndPoints.baseUrl}${EndPoints.register}", data: {
      'first_name': firstName,
      'last_name': lastName,
      'email': email,
      'password': password,
    });
    print("the response in webservice is : $response");
    return response.data;
  }
}
