// ignore_for_file: avoid_print, use_rethrow_when_possible, camel_case_types

import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';
import 'package:test_image/api/dioHelper.dart';

class UploadTestWebServices {
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
      String filename = carLicenseFront.path.split("/").last;
      String filename2 = carLicenseBack.path.split("/").last;
      String filename3 = carFront.path.split("/").last;
      String filename4 = carBack.path.split("/").last;
      String filename5 = carRight.path.split("/").last;
      String filename6 = carLeft.path.split("/").last;
      String filename7 = carInside.path.split("/").last;

      final formData = FormData.fromMap({
        'car_license_front': await MultipartFile.fromFile(carLicenseFront.path,
            filename: filename),
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
      Response response = await DioHelper.postData(endPoint: "otp-send", data: {
        "username": "mr.hosamsaleh@yahoo.com",
        "password": "6H]N3X??B6VO",
        "sender": "EL Trip",
        "mobile": "2$mobile",
        "lang": "en"
      });
      return response.data;
    } catch (error) {}
  }

///////////
  Future<dynamic> getcheckOtp({
    required String mobile,
    required String otp,
    // bool verify = true,
  }) async {
    try {
      Response response =
          await DioHelper.postData(endPoint: "otp-check", data: {
        // "username": "mr.hosamsaleh@yahoo.com",
        // "password": "6H]N3X??B6VO",
        // "mobile": "2$mobile",
        // "otp": otp,

        "username": "mr.hosamsaleh@yahoo.com",
        "password": "6H]N3X??B6VO",
        "mobile": "$mobile",
        "otp": "$otp",
        // "verify": true

        // "verify": true
      });
      return response.data;
    } catch (error) {
      // يمكنك إضافة معالجة الخطأ هنا
    }
  }
}
