part of 'photo_cubit.dart';

sealed class PhotoState {}

final class PhotoInitial extends PhotoState {}

final class GetUploadSuccessState extends PhotoState {}

final class GetUploadFailedState extends PhotoState {}





































// part of 'photo_cubit.dart';

// @immutable
// sealed class PhotoState {}

// final class PhotoInitial extends PhotoState {}

// class GetUpLoadSuccessState extends PhotoState {
//   final UPloadRepo uPloadRepo;

//   GetUpLoadSuccessState(this.uPloadRepo);
// }

// class GetUpLoadFailedState extends PhotoState {}
