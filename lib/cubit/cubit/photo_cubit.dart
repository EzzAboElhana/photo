// ignore_for_file: avoid_print, unused_local_variable, unused_element, curly_braces_in_flow_control_structures

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:test_image/repo.dart';

part 'photo_state.dart';

class PhotoCubit extends Cubit<PhotoState> {
  final UPloadRepo uPloadRepo;
  PhotoCubit(this.uPloadRepo) : super(PhotoInitial());
  static PhotoCubit get(context) => BlocProvider.of(context);

  // XFile carLicenseFront;
  // final picker = ImagePicker();
  // carLicenseFront = XFile(selectedImages.path);

  // Future<void> getProfileImage() async {
  //   XFile selectedImages = await picker.pickImage(source: ImageSource.gallery);

  //   if (selectedImages != null) {
  //     carLicenseFront = selectedImages;
  //     emit(GetUploadSuccessState());
  //   } else {
  //     emit(GetUploadFailedState());
  //   }
  // }

  final picker = ImagePicker();
  XFile? carLicenseFront;
  XFile? carLicenseBack;
  XFile? carFront;
  XFile? carBack;
  XFile? carRight;
  XFile? carLeft;

  Future<void> getUploadImageOne() async {
    final selectedImages = await picker.pickImage(source: ImageSource.gallery);
    if (selectedImages != null) {
      carLicenseFront = selectedImages;

      emit(GetUploadSuccessState());
    } else
      emit(GetUploadFailedState());
  }

  Future<void> getUploadImageTwo() async {
    final selectedImages = await picker.pickImage(source: ImageSource.gallery);
    if (selectedImages != null) {
      carLicenseBack = selectedImages;

      emit(GetUploadSuccessState());
    } else
      emit(GetUploadFailedState());
  }

  Future<void> getUploadImageThree() async {
    final selectedImages = await picker.pickImage(source: ImageSource.gallery);
    if (selectedImages != null) {
      carFront = selectedImages;

      emit(GetUploadSuccessState());
    } else
      emit(GetUploadFailedState());
  }

  Future<void> getUploadImageFour() async {
    final selectedImages = await picker.pickImage(source: ImageSource.gallery);
    if (selectedImages != null) {
      carBack = selectedImages;

      emit(GetUploadSuccessState());
    } else
      emit(GetUploadFailedState());
  }

  Future<void> getUploadImageFive() async {
    final selectedImages = await picker.pickImage(source: ImageSource.gallery);
    if (selectedImages != null) {
      carRight = selectedImages;

      emit(GetUploadSuccessState());
    } else
      emit(GetUploadFailedState());
  }

  Future<void> getUploadImageSix() async {
    final selectedImages = await picker.pickImage(source: ImageSource.gallery);
    if (selectedImages != null) {
      carLeft = selectedImages;

      emit(GetUploadSuccessState());
    } else
      emit(GetUploadFailedState());
  }

  // getUploadImage( XFile image) {
  //                 var imagePicker = await ImagePicker()
  //                     .pickImage(source: ImageSource.gallery);
  //                 if (imagePicker != null) {
  //                   setState(() {});
  //                   await UploadTestWebServices().uploadImage();
  //                 }
  // }

// carLicenseFront.path.split("/").last

  // getUploadImage() async{
  //   uPloadRepo
  //       .uploadImage(carLicenseFront: null
  //           // carLicenseFront: XFile('path'),
  //           // carLicenseBack: XFile('path'),
  //           // carFront: XFile('path'),
  //           // carBack: XFile('path'),
  //           // carRight: XFile('path'),
  //           // carLeft: XFile('path')
  //           )
  //       .then((value) {
  //     // emit(EmitPhotoState());
  //   });
  //         var response = await DioHelper.postData(
  //         endPoint: "driver/profile/media/uploadProfile", data: null,);

  //     emit(response.data);
  //   } catch (e) {
  //     // يمكنك التعامل مع الخطأ هنا، مثلاً يمكنك طباعته أو إعادة رميه
  //     print('حدث خطأ أثناء رفع الصورة: $e');
  //     throw e; // يمكنك إعادة رمي الخطأ للتعامل معه في مكان آخر
  //   }

  // }

  // getUploadImage(XFile image) async {
  //   var imagePicker =
  //     await ImagePicker().pickImage(source: ImageSource.gallery);
  // if (imagePicker != null) {
  //     await UploadTestWebServices().uploadImage(
  //         carLicenseFront: XFile('/'),
  //         carLicenseBack: XFile('/'),
  //         carFront: XFile('/'),
  //         car_back: XFile('/'),
  //         car_right: XFile('/'),
  //         car_left: XFile('/'));
  //     // يمكنك إجراء أي إجراءات إضافية هنا، مثل عرض مؤشر التحميل أو تحديث حالة التحميل
  //     // emit(response.data);

  //     // يمكنك استدعاء المنطق الخاص بتحميل الصورة هنا، مثل استخدام UploadTestWebServices
  //     // وتمرير imagePicker.path كواحدة من البارامترات
  //     // وبعد الانتهاء من عملية التحميل، يمكنك تحديث حالة التحميل مرة أخرى
  //     // على سبيل المثال:
  //     // await UploadTestWebServices().uploadImage(imagePicker.path);
  //     // emit('Upload complete');
  //   }
  // }
// }

  // void getUploadImage({
  //   XFile? carLicenseFront,
  //   XFile? carLicenseBack,
  //   XFile? carFront,
  //   XFile? carBack,
  //   XFile? carRight,
  //   XFile? carLeft,
  // }) {
  //   uPloadRepo
  //       .uploadImage(
  //           carLicenseFront: carLicenseFront!,
  //           carLicenseBack: carLicenseBack!,
  //           carFront: carFront!,
  //           carBack: carBack!,
  //           carRight: carRight!,
  //           carLeft: carLeft!)
  //       .then((value) {
  //     //مش متاكد منها
  //     // emit(GetUploadSuccessState());
  //   });
  // }
}


// import 'package:bloc/bloc.dart';
// import 'package:test_image/api/api.dart';


  































// import 'dart:html';

// import 'package:bloc/bloc.dart';
// import 'package:dio/dio.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:meta/meta.dart';
// import 'package:test_image/api/dioHelper.dart';
// import 'package:test_image/repo.dart';

// part 'photo_state.dart';

// class PhotoCubit extends Cubit<PhotoState> {
//   final UPloadRepo uploadRepo;
//   PhotoCubit(this.uploadRepo) : super(PhotoInitial());
//   static PhotoCubit get(context) => BlocProvider.of(context);

//   upLoadPhoto({
//     required XFile carLicenseFront,
//     required XFile carLicenseBack,
//     required XFile carFront,
//     required XFile car_back,
//     required XFile car_right,
//     required XFile car_left,
//   }) {
//     UPloadRepo.upLoadPhoto(carLicenseBack, carLicenseFront, carFront, car_back,
//             car_right, car_left)
//         .then((value) {
//       emit(GetUpLoadSuccessState(value));
//     }).catchError((error) {
//       emit(GetUpLoadFailedState());
//     });
//   }

//   Future<dynamic> uploadImage({
//     required XFile carLicenseFront,
//     required XFile carLicenseBack,
//     required XFile carFront,
//     required XFile car_back,
//     required XFile car_right,
//     required XFile car_left,
//   }) async {
//     try {
//       String filename = carLicenseFront.path.split("/").last;
//       String filename2 = carLicenseBack.path.split("/").last;
//       String filename3 = carFront.path.split("/").last;
//       String filename4 = car_back.path.split("/").last;
//       String filename5 = car_right.path.split("/").last;
//       String filename6 = car_left.path.split("/").last;

//       final formData = FormData.fromMap({
//         'car_license_front': await MultipartFile.fromFile(carLicenseFront.path,
//             filename: filename),
//         'car_license_back': await MultipartFile.fromFile(carLicenseBack.path,
//             filename: filename2),
//         'car_front':
//             await MultipartFile.fromFile(carFront.path, filename: filename3),
//         'car_back':
//             await MultipartFile.fromFile(car_back.path, filename: filename4),
//         'car_right':
//             await MultipartFile.fromFile(car_right.path, filename: filename5),
//         'car_left':
//             await MultipartFile.fromFile(car_left.path, filename: filename6),
//         'type': "car"
//       });

//       var response = await DioHelper.postData(
//           endPoint: "driver/profile/media/uploadProfile", data: formData);

//       return response.data;
//     } catch (e) {
//       // يمكنك التعامل مع الخطأ هنا، مثلاً يمكنك طباعته أو إعادة رميه
//       print('حدث خطأ أثناء رفع الصورة: $e');
//       throw e; // يمكنك إعادة رمي الخطأ للتعامل معه في مكان آخر
//     }
//   }
// }
