// ignore_for_file: avoid_print, use_rethrow_when_possible, camel_case_types

import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';
import 'package:test_image/api/dioHelper.dart';

class UploadTestWebServices {
// final formData = FormData.fromMap({
//   'name': 'dio',
//   'date': DateTime.now().toIso8601String(),
//   'file': await MultipartFile.fromFile('./text.txt', filename: 'upload.txt'),
//   'files': [
//     await MultipartFile.fromFile('./text1.txt', filename: 'text1.txt'),
//     await MultipartFile.fromFile('./text2.txt', filename: 'text2.txt'),
//   ]
// });
// final response = await dio.post('/info', data: formData);

  // Future<dynamic> uploadImage(XFile image) async {
  //   try {
  //     String filename = image.path.split("/").last;
  //     final formData = FormData.fromMap({
  //       'car_license_front':
  //           await MultipartFile.fromFile(image.path, filename: filename),
  //       'car_license_back':
  //           await MultipartFile.fromFile(image.path, filename: filename),
  //       'car_front':
  //           await MultipartFile.fromFile(image.path, filename: filename),
  //       'car_back':
  //           await MultipartFile.fromFile(image.path, filename: filename),
  //       'car_right':
  //           await MultipartFile.fromFile(image.path, filename: filename),
  //       'car_left':
  //           await MultipartFile.fromFile(image.path, filename: filename),

  //       // 'files': [
  //       //   await MultipartFile.fromFile(image.path, filename: filename),
  //       //   await MultipartFile.fromFile(image.path, filename: filename),
  //       //   await MultipartFile.fromFile(image.path, filename: filename),
  //       //   await MultipartFile.fromFile(image.path, filename: filename),
  //       // ]
  //     });
  //     var response = await DioHelper.postData(
  //         endPoint: "driver/profile/media/uploadProfile", data: formData);
  //     return response.data;
  //   } catch (e) {}
  // }

  Future<dynamic> uploadImage({
    required XFile carLicenseFront,
    required XFile carLicenseBack,
    required XFile carFront,
    required XFile carBack,
    required XFile carRight,
    required XFile carLeft,
  }) async {
    try {
      String filename = carLicenseFront.path.split("/").last;
      String filename2 = carLicenseBack.path.split("/").last;
      String filename3 = carFront.path.split("/").last;
      String filename4 = carBack.path.split("/").last;
      String filename5 = carRight.path.split("/").last;
      String filename6 = carLeft.path.split("/").last;

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
        'type': "car"
      });

      var response = await DioHelper.postData(
          endPoint: "driver/profile/media/uploadProfile", data: formData);

      return response.data;
    } catch (e) {
      // يمكنك التعامل مع الخطأ هنا، مثلاً يمكنك طباعته أو إعادة رميه
      print('حدث خطأ أثناء رفع الصورة: $e');
      throw e; // يمكنك إعادة رمي الخطأ للتعامل معه في مكان آخر
    }
  }
  // final response = dio.post('/info', data: formData);
}
