// ignore_for_file: avoid_print, use_rethrow_when_possible, camel_case_types, empty_catches

import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';
import 'package:test_image/api/dioHelper.dart';

class UploadTestWebServices {
  static Dio? dio;

  Future<dynamic> uploadImage({
    required XFile carLicenseFront,
    required XFile carLicenseBack,
    required XFile carFront,
    required XFile carBack,
    required XFile carRight,
    required XFile carLeft,
    required XFile carInside,
  }) async {
    try {
      String filenameCarLicenseFront = carLicenseFront.path.split("/").last;
      String filename2 = carLicenseBack.path.split("/").last;
      String filename3 = carFront.path.split("/").last;
      String filename4 = carBack.path.split("/").last;
      String filename5 = carRight.path.split("/").last;
      String filename6 = carLeft.path.split("/").last;
      String filename7 = carInside.path.split("/").last;

      final formData = FormData.fromMap({
        'car_license_front': await MultipartFile.fromFile(carLicenseFront.path,
            filename: filenameCarLicenseFront),
        'car_license_back': await MultipartFile.fromFile(carLicenseBack.path,
            filename: filename2),
        'car_front':
            await MultipartFile.fromFile(carFront.path, filename: filename3),
        'car_back':
            await MultipartFile.fromFile(carBack.path, filename: filename4),
        'car_right':
            await MultipartFile.fromFile(carRight.path, filename: filename5),
        'car_left':
            await MultipartFile.fromFile(carLeft.path, filename: filename6),
        'car_inside':
            await MultipartFile.fromFile(carInside.path, filename: filename7),
        'type': "car"
      });

      var response = await DioHelper.postData(
          endPoint: "driver/profile/media/uploadProfile", data: formData);

      return response.data;
    } catch (e) {
      print('حدث خطأ أثناء رفع الصورة: $e');
      throw e;
    }
  }

  Future<dynamic> uploadImagePersonal({
    required XFile personalAvatar,
    required XFile idPhotoFront,
    required XFile idPhotoBack,
    required XFile criminalRecord,
    required XFile captainLicenseFront,
    required XFile captainLicenseBack,
  }) async {
    try {
      String filename = personalAvatar.path.split("/").last;
      String filename2 = idPhotoFront.path.split("/").last;
      String filename3 = idPhotoBack.path.split("/").last;
      String filename4 = criminalRecord.path.split("/").last;
      String filename5 = captainLicenseFront.path.split("/").last;
      String filename6 = captainLicenseBack.path.split("/").last;

      final formData = FormData.fromMap({
        'personal_avatar': await MultipartFile.fromFile(personalAvatar.path,
            filename: filename),
        'id_photo_front': await MultipartFile.fromFile(idPhotoFront.path,
            filename: filename2),
        'id_photo_back':
            await MultipartFile.fromFile(idPhotoBack.path, filename: filename3),
        'criminal_record': await MultipartFile.fromFile(criminalRecord.path,
            filename: filename4),
        'captain_license_front': await MultipartFile.fromFile(
            captainLicenseFront.path,
            filename: filename5),
        'captain_license_back': await MultipartFile.fromFile(
            captainLicenseBack.path,
            filename: filename6),
        'type': "personal"
      });

      var response = await DioHelper.postData(
          endPoint: "driver/profile/media/uploadProfile", data: formData);

      return response.data;
    } catch (e) {
      print('حدث خطأ أثناء رفع الصورة: $e');
      throw e;
    }
  }

  Future<dynamic> uploadImageApiPersonal({required String type}) async {
    try {
      var response = await DioHelper.postData(
          endPoint: "driver/profile/media/allMedia", data: {'type': type});
      return response.data;
    } catch (e) {
      print('حدث خطأ أثناء رفع الصورة: $e');
      throw e;
    }
  }

/////
  Future<dynamic> getOtp({
    required String mobile,
  }) async {
    try {
      Response response = await DioHelper.postData(
          phoneAuth: true,
          endPoint: "otp-send",
          data: {
            "username": "mr.hosamsaleh@yahoo.com",
            "password": "6H]N3X??B6VO",
            "sender": "EL Trip",
            "mobile": "2$mobile",
            "lang": "en"
          });
      return response.data;
    } catch (error) {}
  }

  Future<dynamic> getcheckOtp({
    required String mobile,
    required String otp,
    // bool verify = true,
  }) async {
    try {
      Response response = await DioHelper.postData(
          phoneAuth: true,
          endPoint: "otp-check",
          data: {
            "username": "mr.hosamsaleh@yahoo.com",
            "password": "6H]N3X??B6VO",
            "mobile": mobile,
            "otp": otp,
          });
      return response.data;
    } catch (error) {}
  }

  Future<dynamic> getchangePassword({
    required String phone,
    required String password,
  }) async {
    try {
      Response response =
          await DioHelper.postData(endPoint: "driver/restPassword", data: {
        "phone": phone,
        "password": password,
      });
      return response.data;
    } catch (error) {}
  }

  Future<dynamic> getcheckPhone({
    required String phone,
  }) async {
    try {
      Response response =
          await DioHelper.postData(endPoint: "driver/checkPhone", data: {
        "phone": phone,
      });

      return response.data;
    } catch (error) {}
  }

  Future<bool> isPhoneNumberRegistered(String phoneNumber) async {
    try {
      // استبدال 'YOUR_API_ENDPOINT' بعنوان النهاية الخاص بك
      Response response =
          await DioHelper.postData(endPoint: "driver/checkPhone", data: {
        "phone": phoneNumber,
      });

      // تحقق من رمز الاستجابة أو أي بيانات إضافية تُرجعها الخادم
      if (response.statusCode == 200) {
        // يشير إلى أن الرقم مسجل
        return true;
      } else {
        // يشير إلى أن الرقم غير مسجل
        return false;
      }
    } catch (e) {
      // يمكنك إدارة الأخطاء هنا
      print('Error checking phone registration: $e');
      throw e; // يمكنك إعادة رمي الخطأ أو التعامل معه بأي شكل من الأشكال
    }
  }

  Future<Response> checkPhoneRegistration(String phoneNumber) async {
    try {
      return await DioHelper.postData(
        data: {'phone': phoneNumber},
        endPoint: "driver/checkPhone",
      );
    } catch (e) {
      throw e;
    }
  }

  Future<dynamic> getRegisterData({
    required String phone,
    required String password,
    required String name,
    required String email,
    required String gender,
    required String country,
  }) async {
    try {
      Response response =
          await DioHelper.postData(endPoint: "driver/register", data: {
        "phone": phone,
        "password": password,
        "name": name,
        "email": email,
        "gender": gender,
        "country_id": country
      });
      return response.data;
    } catch (error) {}
  }
}
