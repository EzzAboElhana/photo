// ignore_for_file: file_names

import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioHelper {
  static Dio? dio;

  static init() {
    dio = Dio(
      BaseOptions(
          baseUrl: "https://smssmartegypt.com/sms/api/",
          receiveDataWhenStatusError: true,
          connectTimeout: const Duration(seconds: 10),
          receiveTimeout: const Duration(seconds: 10),
          headers: {
            "Authorization":
                'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3NpbHZlci50cmlwdS5uZXQvYXBpL3YxL2RyaXZlci9yZWdpc3RlciIsImlhdCI6MTY5OTQ2MjQ3NSwiZXhwIjoxNjk5NDY2MDc1LCJuYmYiOjE2OTk0NjI0NzUsImp0aSI6ImFEYWZlNFdkVWNDcG5nZnIiLCJzdWIiOiIxMyIsInBydiI6ImEzMTQ3NGQyMzc4NjNlNTU4MjYxYjg1ZWE3M2E3MTI0MTUxOWFlOTMifQ.Pqw8RBFTDAzhfXX_WRqNXoW3Txy4i0ovPYljW0YoTAI',
            'Content-Type': 'application/json',
            "Accept": "application/json"
          }),
    );
    dio!.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      compact: false,
    ));
  }

  static Future<Response> postData({
    required String endPoint,
    required dynamic data,
  }) {
    return dio!.post(endPoint, data: data);
  }

  static Future<Response> getData({
    required String endPoint,
    Map<String, dynamic>? queryParameters,
  }) {
    return dio!.get(endPoint, queryParameters: queryParameters);
  }
}
