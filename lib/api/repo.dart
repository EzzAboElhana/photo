import 'package:image_picker/image_picker.dart';
import 'package:test_image/api/api.dart';
import 'package:test_image/model/image_model.dart';

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
}
