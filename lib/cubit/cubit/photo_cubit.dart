// ignore_for_file: avoid_print, unused_local_variable, unused_element, curly_braces_in_flow_control_structures

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:test_image/api/dioHelper.dart';
import 'package:test_image/model/image_model.dart';
import 'package:test_image/api/repo.dart';

part 'photo_state.dart';

class PhotoCubit extends Cubit<PhotoState> {
  final UPloadRepo uPloadRepo;
  PhotoCubit(this.uPloadRepo) : super(PhotoInitial());
  static PhotoCubit get(context) => BlocProvider.of(context);

  final picker = ImagePicker();
  XFile? carLicenseFront;
  XFile? carLicenseBack;
  XFile? carFront;
  XFile? carBack;
  XFile? carRight;
  XFile? carLeft;
  XFile? carInside;

////
  Future<void> getUploadImageOne(
      {ImageSource source = ImageSource.gallery}) async {
    final selectedImages = await picker.pickImage(source: source);
    if (selectedImages != null) {
      carLicenseFront = selectedImages;

      emit(GetUploadSuccessState());
    } else {
      emit(GetUploadFailedState());
    }
  }

//////

  Future<void> getUploadImageTwo(
      {ImageSource source = ImageSource.gallery}) async {
    final selectedImages = await picker.pickImage(source: source);
    if (selectedImages != null) {
      carLicenseBack = selectedImages;

      emit(GetUploadSuccessState());
    } else {
      emit(GetUploadFailedState());
    }
  }

  Future<void> getUploadImageThree(
      {ImageSource source = ImageSource.gallery}) async {
    final selectedImages = await picker.pickImage(source: source);
    if (selectedImages != null) {
      carFront = selectedImages;

      emit(GetUploadSuccessState());
    } else {
      emit(GetUploadFailedState());
    }
  }

  Future<void> getUploadImageFour(
      {ImageSource source = ImageSource.gallery}) async {
    final selectedImages = await picker.pickImage(source: source);
    if (selectedImages != null) {
      carBack = selectedImages;

      emit(GetUploadSuccessState());
    } else {
      emit(GetUploadFailedState());
    }
  }

  Future<void> getUploadImageFive(
      {ImageSource source = ImageSource.gallery}) async {
    final selectedImages = await picker.pickImage(source: source);
    if (selectedImages != null) {
      carRight = selectedImages;

      emit(GetUploadSuccessState());
    } else {
      emit(GetUploadFailedState());
    }
  }

  Future<void> getUploadImageSix(
      {ImageSource source = ImageSource.gallery}) async {
    final selectedImages = await picker.pickImage(source: source);
    if (selectedImages != null) {
      carLeft = selectedImages;

      emit(GetUploadSuccessState());
    } else {
      emit(GetUploadFailedState());
    }
  }

  Future<void> getUploadImageSeven(
      {ImageSource source = ImageSource.gallery}) async {
    final selectedImages = await picker.pickImage(source: source);
    if (selectedImages != null) {
      carInside = selectedImages;

      emit(GetUploadSuccessState());
    } else {
      emit(GetUploadFailedState());
    }
  }

  Future<void> getImagesApi() async {
    emit(GetUploadApiLoadingState());

    try {
      // final formData = FormData.fromMap({'type': "car"});
      var response = await DioHelper.postData(
          endPoint: 'driver/profile/media/allMedia', data: {'type': "car"});

      String images = response.data;
      emit(GetUploadApiSuccessState(images));
    } catch (e) {
      emit(GetUploadApiFailedState(e.toString()));
    }
  }

  void getUploadImage({
    XFile? carLicenseFront,
    XFile? carLicenseBack,
    XFile? carFront,
    XFile? carBack,
    XFile? carRight,
    XFile? carLeft,
    XFile? carInside,
  }) {
    uPloadRepo
        .uploadImage(
            carLicenseFront: carLicenseFront!,
            carLicenseBack: carLicenseBack!,
            carFront: carFront!,
            carBack: carBack!,
            carRight: carRight!,
            carLeft: carLeft!,
            carInside: carInside!)
        .then((value) {
      //مش متاكد منها
      // emit(GetUploadSuccessState());
    });
  }

  final pickerPersonal = ImagePicker();
  XFile? personalAvatar;
  XFile? idPhotoFront;
  XFile? idPhotoBack;
  XFile? criminalRecord;
  XFile? captainLicenseFront;
  XFile? captainLicenseBack;
////
  Future<void> getUploadImagePersonalOne(
      {ImageSource source = ImageSource.gallery}) async {
    final selectedImages = await picker.pickImage(source: source);
    if (selectedImages != null) {
      personalAvatar = selectedImages;

      emit(GetUploadSuccessState());
    } else {
      emit(GetUploadFailedState());
    }
  }

  Future<void> getUploadImagePersonalTwo(
      {ImageSource source = ImageSource.gallery}) async {
    final selectedImages = await picker.pickImage(source: source);
    if (selectedImages != null) {
      idPhotoFront = selectedImages;

      emit(GetUploadSuccessState());
    } else {
      emit(GetUploadFailedState());
    }
  }

  Future<void> getUploadImagePersonalThree(
      {ImageSource source = ImageSource.gallery}) async {
    final selectedImages = await picker.pickImage(source: source);
    if (selectedImages != null) {
      idPhotoBack = selectedImages;

      emit(GetUploadSuccessState());
    } else {
      emit(GetUploadFailedState());
    }
  }

  Future<void> getUploadImagePersonalFour(
      {ImageSource source = ImageSource.gallery}) async {
    final selectedImages = await picker.pickImage(source: source);
    if (selectedImages != null) {
      criminalRecord = selectedImages;

      emit(GetUploadSuccessState());
    } else {
      emit(GetUploadFailedState());
    }
  }

  Future<void> getUploadImagePersonalFive(
      {ImageSource source = ImageSource.gallery}) async {
    final selectedImages = await picker.pickImage(source: source);
    if (selectedImages != null) {
      captainLicenseFront = selectedImages;

      emit(GetUploadSuccessState());
    } else {
      emit(GetUploadFailedState());
    }
  }

  Future<void> getUploadImagePersonalSix(
      {ImageSource source = ImageSource.gallery}) async {
    final selectedImages = await picker.pickImage(source: source);
    if (selectedImages != null) {
      captainLicenseBack = selectedImages;

      emit(GetUploadSuccessState());
    } else {
      emit(GetUploadFailedState());
    }
  }

  Future<void> getImagesApiPersonal() async {
    emit(GetUploadApiLoadingState());

    try {
      // final formData = FormData.fromMap({'type': "car"});
      var response = await DioHelper.postData(
          endPoint: 'driver/profile/media/allMedia',
          data: {'type': "personal"});

      String images = response.data;
      emit(GetUploadApiSuccessState(images));
    } catch (e) {
      emit(GetUploadApiFailedState(e.toString()));
    }
  }

  void getUploadImagePersonal({
    XFile? personalAvatar,
    XFile? idPhotoFront,
    XFile? idPhotoBack,
    XFile? criminalRecord,
    XFile? captainLicenseFront,
    XFile? captainLicenseBack,
  }) {
    uPloadRepo
        .uploadImagePersonal(
      personalAvatar: personalAvatar!,
      idPhotoFront: idPhotoFront!,
      idPhotoBack: idPhotoBack!,
      criminalRecord: criminalRecord!,
      captainLicenseFront: captainLicenseFront!,
      captainLicenseBack: captainLicenseBack!,
    )
        .then((value) {
      //مش متاكد منها
      // emit(GetUploadSuccessState());
    });
  }

  void getImagePersonalModel({required String type}) {
    uPloadRepo.getImageModel(type: type).then((imageModel) {
      emit(GetImageSuccessState(imageModel));
    }).catchError((error) {
      emit(GetImageFailedState());
    });
  }
}
