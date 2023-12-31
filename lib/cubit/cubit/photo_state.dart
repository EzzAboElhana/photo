part of 'photo_cubit.dart';

sealed class PhotoState {}

final class PhotoInitial extends PhotoState {}

final class GetUploadSuccessState extends PhotoState {}

final class GetUploadFailedState extends PhotoState {}

//////
final class GetUploadApiLoadingState extends PhotoState {}

final class GetUploadApiSuccessState extends PhotoState {
  late List<String> images;

  GetUploadApiSuccessState(String images);
}

final class GetUploadApiFailedState extends PhotoState {
  GetUploadApiFailedState(String string);
}

final class GetImageSuccessState extends PhotoState {
  ImageModel imageModel;
  GetImageSuccessState(this.imageModel);
}

final class GetImageFailedState extends PhotoState {}






































// part of 'photo_cubit.dart';

// @immutable
// sealed class PhotoState {}

// final class PhotoInitial extends PhotoState {}

// class GetUpLoadSuccessState extends PhotoState {
//   final UPloadRepo uPloadRepo;

//   GetUpLoadSuccessState(this.uPloadRepo);
// }

// class GetUpLoadFailedState extends PhotoState {}
