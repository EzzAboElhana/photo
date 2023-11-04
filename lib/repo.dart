import 'package:image_picker/image_picker.dart';
import 'package:test_image/api/api.dart';

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
  }) async {
    return await uploadTestWebServices.uploadImage(
        carLicenseFront: carLicenseFront,
        carLicenseBack: carLicenseBack,
        carFront: carFront,
        carBack: carBack,
        carRight: carRight,
        carLeft: carLeft);
  }
}
