// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_image/api/api.dart';
import 'package:test_image/api/dioHelper.dart';
import 'package:test_image/cubit/cubit/photo_cubit.dart';
import 'package:test_image/api/repo.dart';
import 'package:test_image/screen/forgot%20Password.dart';
import 'package:test_image/screen/otp.dart';
import 'package:test_image/start.dart';

void main() async {
  DioHelper.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return (MultiBlocProvider(providers: [
      BlocProvider<PhotoCubit>(
          create: (BuildContext context) => PhotoCubit(
              UPloadRepo(uploadTestWebServices: UploadTestWebServices()))),
    ], child: MaterialApp(home: ForgotPassword())));
  }
}
