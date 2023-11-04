// ignore_for_file: prefer_const_constructors, unnecessary_null_comparison, use_super_parameters, use_build_context_synchronously

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:test_image/cubit/cubit/photo_cubit.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
//   Future<File> getImage() async {
//     final ImagePicker _picker = ImagePicker();
// // Pick an image
//     final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
// //TO convert Xfile into file
//     File file = File(image!.path);
// //print(‘Image picked’);
//     return file;
//   }

//   'name': 'dio',
// final formData = FormData.fromMap({
//   'date': DateTime.now().toIso8601String(),
//   'file': MultipartFile.fromFile('./text.txt', filename: 'upload.txt'),
// });
// final response = dio.post('/info', data: formData);
// var formData = FormData.fromMap({
//   'file': MultipartFile.fromFile(empFace.path, filename: empCode),
// });

  // final response = Dio().post(
  //   'your Api url',
  //   data: formData,
  // );
  _showOption(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text('Option'),
              content: SingleChildScrollView(
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.image),
                      title: Text('Gallery'),
                      onTap: () => _imageFormGallry(context),
                    ),
                    ListTile(
                      leading: Icon(Icons.image),
                      title: Text('camera'),
                      onTap: () => _imageFormCamera(context),
                    ),
                  ],
                ),
              ),
            ));
  }

  Future _imageFormGallry(BuildContext context) async {
    PhotoCubit.get(context).getUploadImageOne();
    Navigator.of(context).pop();
    setState(() {});
  }

  Future _imageFormCamera(BuildContext context) async {
    XFile image;
    var imagePicker = await ImagePicker().pickImage(source: ImageSource.camera);
    if (imagePicker != null) {
      image = imagePicker;
      PhotoCubit.get(context).getUploadImageOne();
      Navigator.of(context).pop();
      setState(() {});
    }
  }
  // bool isImagesSelected = false;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PhotoCubit, PhotoState>(
      builder: (context, state) {
        return Scaffold(
          body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Center(
              child: InkWell(
                onTap: () async {
                  _showOption(context);

                  // PhotoCubit.get(context).getUploadImageOne();
                },
                child: PhotoCubit.get(context).carLicenseFront == null
                    ? Container(
                        height: 40,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: Colors.black38,
                        ),
                        child: Center(
                            child: Text(
                          'UploadPhoto',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        )),
                      )
                    : Image.file(
                        File(PhotoCubit.get(context).carLicenseFront!.path)),
              ),
            ),
          ]),
        );
      },
    );
  }
}
