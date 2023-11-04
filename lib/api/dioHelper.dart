// ignore_for_file: file_names

import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioHelper {
  static Dio? dio;

  static init() {
    dio = Dio(
      BaseOptions(
          baseUrl: "https://silver.tripu.net/api/v1/",
          receiveDataWhenStatusError: true,
          connectTimeout: const Duration(seconds: 10),
          receiveTimeout: const Duration(seconds: 10),
          headers: {
            "Authorization":
                'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3NpbHZlci50cmlwdS5uZXQvYXBpL3YxL2RyaXZlci9sb2dpbiIsImlhdCI6MTY5ODg1MTY3NiwiZXhwIjoxNjk4ODU1Mjc2LCJuYmYiOjE2OTg4NTE2NzYsImp0aSI6IlVNR1NHaG1KY0JybUVucDgiLCJzdWIiOiIxMCIsInBydiI6ImEzMTQ3NGQyMzc4NjNlNTU4MjYxYjg1ZWE3M2E3MTI0MTUxOWFlOTMifQ.gDI29NnTcpd1QVl6SiCgMfvywja8K_vUEGu-d03BD-U',
            'Content-Type': 'application/json',
            //"lang": CacheHelper.getData(key: "lang") == "ar_EG" ? "ar" : "en" ,
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
    // dio!.interceptors.add(ErrorInterceptor());
  }

  static Future<Response> postData({
    required String endPoint,
    required dynamic data,
  }) {
    return dio!.post(endPoint, data: data);
  }
}
