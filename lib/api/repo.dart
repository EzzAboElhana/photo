// ignore_for_file: use_rethrow_when_possible, avoid_print

import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';
import 'package:test_image/api/api.dart';
import 'package:test_image/model/image_model.dart';
import 'package:test_image/model/loginModel.dart';
import 'package:test_image/model/phone_model.dart';

class UPloadRepo {
  final UploadTestWebServices uploadTestWebServices;

  UPloadRepo({required this.uploadTestWebServices});

  Future<dynamic> uploadImage({
    required XFile carLicenseFront,
    required XFile carLicenseBack,
    required XFile carFront,
    required XFile carBack,
    required XFile carRight,
    required XFile carLeft,
    required XFile carInside,
  }) async {
    return await uploadTestWebServices.uploadImage(
        carLicenseFront: carLicenseFront,
        carLicenseBack: carLicenseBack,
        carFront: carFront,
        carBack: carBack,
        carRight: carRight,
        carLeft: carLeft,
        carInside: carInside);
  }

  Future<ImageModel> getImageModel({required String type}) async {
    return ImageModel.fromJson(
        await uploadTestWebServices.uploadImageApiPersonal(type: type));
  }

  Future<dynamic> uploadImagePersonal({
    required XFile personalAvatar,
    required XFile idPhotoFront,
    required XFile idPhotoBack,
    required XFile criminalRecord,
    required XFile captainLicenseFront,
    required XFile captainLicenseBack,
  }) async {
    return await uploadTestWebServices.uploadImagePersonal(
        personalAvatar: personalAvatar,
        idPhotoFront: idPhotoFront,
        idPhotoBack: idPhotoBack,
        criminalRecord: criminalRecord,
        captainLicenseFront: captainLicenseFront,
        captainLicenseBack: captainLicenseBack);
  }

//OTP
  /////// dynamic علشان معنديش model
  Future<dynamic> getOtp({
    required String mobile,
    // required String password,
    // required String username,
    // required String sender,
    // required String lang
  }) async {
    return await uploadTestWebServices.getOtp(
      mobile: mobile,
      // username: username,
      // sender: sender,
      // lang: lang,
      // password: password,
    );
  }

  Future<dynamic> getcheckOtp({
    required String otp,
    required String mobile,
  }) async {
    return await uploadTestWebServices.getcheckOtp(
      otp: otp,
      mobile: mobile,
    );
  }

  //////
  ///
  Future<dynamic> getchangePassword({
    required String password,
    required String phone,
  }) async {
    return await uploadTestWebServices.getchangePassword(
      phone: phone,
      password: password,
    );
  }

  Future<PhoneModel> getcheckPhone({
    required String phone,
  }) async {
    return PhoneModel.fromJson(
        await uploadTestWebServices.getcheckPhone(phone: phone));
  }

  Future<bool> isPhoneNumberRegistered(String phoneNumber) async {
    try {
      Response response =
          await uploadTestWebServices.checkPhoneRegistration(phoneNumber);

      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print('Error checking phone registration: $e');
      throw e;
    }
  }

  Future<LoginModel> getRegisterData({
    required String phone,
    required String password,
    required String name,
    required String email,
    required String gender,
    required country,
  }) async {
    return LoginModel.fromJson(await uploadTestWebServices.getRegisterData(
        phone: phone,
        password: password,
        name: name,
        email: email,
        gender: gender,
        country: country));
  }
}
