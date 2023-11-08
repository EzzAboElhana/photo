// ignore_for_file: prefer_const_constructors, unnecessary_null_comparison, use_super_parameters, use_build_context_synchronously, prefer_const_literals_to_create_immutables, file_names

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:test_image/cubit/cubit/photo_cubit.dart';

class PersonalPage extends StatefulWidget {
  const PersonalPage({Key? key}) : super(key: key);

  @override
  State<PersonalPage> createState() => _PersonalPageState();
}

class _PersonalPageState extends State<PersonalPage> {
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
    PhotoCubit.get(context)
        .getUploadImagePersonalOne(source: ImageSource.gallery);
    Navigator.of(context).pop();
    setState(() {});
  }

  Future _imageFormCamera(BuildContext context) async {
    PhotoCubit.get(context)
        .getUploadImagePersonalOne(source: ImageSource.camera);
    Navigator.of(context).pop();
    setState(() {});
    // }
  }

  _showOptionTwo(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text('Option2'),
              content: SingleChildScrollView(
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.image),
                      title: Text('Gallery'),
                      onTap: () => _imageFormGallryTwo(context),
                    ),
                    ListTile(
                      leading: Icon(Icons.image),
                      title: Text('camera'),
                      onTap: () => _imageFormCameraTwo(context),
                    ),
                  ],
                ),
              ),
            ));
  }

  Future _imageFormGallryTwo(BuildContext context) async {
    PhotoCubit.get(context)
        .getUploadImagePersonalTwo(source: ImageSource.gallery);
    Navigator.of(context).pop();
    setState(() {});
  }

  Future _imageFormCameraTwo(BuildContext context) async {
    PhotoCubit.get(context)
        .getUploadImagePersonalTwo(source: ImageSource.camera);
    Navigator.of(context).pop();
    setState(() {});
    // }
  }

  _showOptionThree(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text('Option3'),
              content: SingleChildScrollView(
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.image),
                      title: Text('Gallery'),
                      onTap: () => _imageFormGallryThree(context),
                    ),
                    ListTile(
                      leading: Icon(Icons.image),
                      title: Text('camera'),
                      onTap: () => _imageFormCameraThree(context),
                    ),
                  ],
                ),
              ),
            ));
  }

  Future _imageFormGallryThree(BuildContext context) async {
    PhotoCubit.get(context)
        .getUploadImagePersonalThree(source: ImageSource.gallery);
    Navigator.of(context).pop();
    setState(() {});
  }

  Future _imageFormCameraThree(BuildContext context) async {
    PhotoCubit.get(context)
        .getUploadImagePersonalThree(source: ImageSource.camera);
    Navigator.of(context).pop();
    setState(() {});
    // }
  }

  _showOptionFour(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text('Option4'),
              content: SingleChildScrollView(
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.image),
                      title: Text('Gallery'),
                      onTap: () => _imageFormGallryFour(context),
                    ),
                    ListTile(
                      leading: Icon(Icons.image),
                      title: Text('camera'),
                      onTap: () => _imageFormCameraFour(context),
                    ),
                  ],
                ),
              ),
            ));
  }

  Future _imageFormGallryFour(BuildContext context) async {
    PhotoCubit.get(context)
        .getUploadImagePersonalFour(source: ImageSource.gallery);
    Navigator.of(context).pop();
    setState(() {});
  }

  Future _imageFormCameraFour(BuildContext context) async {
    PhotoCubit.get(context)
        .getUploadImagePersonalFour(source: ImageSource.camera);
    Navigator.of(context).pop();
    setState(() {});
    // }
  }

  _showOptionFive(BuildContext context) {
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
                      onTap: () => _imageFormGallryFive(context),
                    ),
                    ListTile(
                      leading: Icon(Icons.image),
                      title: Text('camera'),
                      onTap: () => _imageFormCameraFive(context),
                    ),
                  ],
                ),
              ),
            ));
  }

  Future _imageFormGallryFive(BuildContext context) async {
    PhotoCubit.get(context)
        .getUploadImagePersonalFive(source: ImageSource.gallery);
    Navigator.of(context).pop();
    setState(() {});
  }

  Future _imageFormCameraFive(BuildContext context) async {
    PhotoCubit.get(context)
        .getUploadImagePersonalFive(source: ImageSource.camera);
    Navigator.of(context).pop();
    setState(() {});
    // }
  }

  _showOptionSix(BuildContext context) {
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
                      onTap: () => _imageFormGallrySix(context),
                    ),
                    ListTile(
                      leading: Icon(Icons.image),
                      title: Text('camera'),
                      onTap: () => _imageFormCameraSix(context),
                    ),
                  ],
                ),
              ),
            ));
  }

  Future _imageFormGallrySix(BuildContext context) async {
    PhotoCubit.get(context)
        .getUploadImagePersonalSix(source: ImageSource.gallery);
    Navigator.of(context).pop();
    setState(() {});
  }

  Future _imageFormCameraSix(BuildContext context) async {
    PhotoCubit.get(context)
        .getUploadImagePersonalSix(source: ImageSource.camera);
    Navigator.of(context).pop();
    setState(() {});
    // }
  }

  // bool isImagesSelected = false;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PhotoCubit, PhotoState>(
      builder: (context, state) {
        return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              leading: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
              ),
              backgroundColor: Color(0xFF1976D2),
              title: Text(
                'Welcom',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            body: Expanded(
                child: MediaQuery.removePadding(
                    context: context,
                    // removeTop: true,
                    child: ListView(children: [
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: InkWell(
                                onTap: () async {
                                  _showOption(context);
                                },
                                child: PhotoCubit.get(context).personalAvatar ==
                                        null
                                    ? Container(
                                        height: 40,
                                        width: 200,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(24),
                                          color: Colors.black38,
                                        ),
                                        child: Center(
                                            child: Text(
                                          'UploadPhoto1',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        )),
                                      )
                                    : SizedBox(
                                        height: 100,
                                        width: 100,
                                        child: Image.file(File(
                                            PhotoCubit.get(context)
                                                .personalAvatar!
                                                .path)),
                                      ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            InkWell(
                              onTap: () async {
                                _showOptionTwo(context);
                              },
                              child: PhotoCubit.get(context).idPhotoFront ==
                                      null
                                  ? Container(
                                      height: 40,
                                      width: 200,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(24),
                                        color: Colors.black38,
                                      ),
                                      child: Center(
                                          child: Text(
                                        'UploadPhoto2',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      )),
                                    )
                                  : SizedBox(
                                      height: 100,
                                      width: 100,
                                      child: Image.file(File(
                                          PhotoCubit.get(context)
                                              .idPhotoFront!
                                              .path)),
                                    ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            InkWell(
                              onTap: () async {
                                _showOptionThree(context);
                              },
                              child: PhotoCubit.get(context).idPhotoBack == null
                                  ? Container(
                                      height: 40,
                                      width: 200,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(24),
                                        color: Colors.black38,
                                      ),
                                      child: Center(
                                          child: Text(
                                        'UploadPhoto3',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      )),
                                    )
                                  : SizedBox(
                                      height: 100,
                                      width: 100,
                                      child: Image.file(File(
                                          PhotoCubit.get(context)
                                              .idPhotoBack!
                                              .path))),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            InkWell(
                              onTap: () async {
                                _showOptionFour(context);
                              },
                              child: PhotoCubit.get(context).criminalRecord ==
                                      null
                                  ? Container(
                                      height: 40,
                                      width: 200,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(24),
                                        color: Colors.black38,
                                      ),
                                      child: Center(
                                          child: Text(
                                        'UploadPhoto4',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      )),
                                    )
                                  : SizedBox(
                                      height: 100,
                                      width: 100,
                                      child: Image.file(File(
                                          PhotoCubit.get(context)
                                              .criminalRecord!
                                              .path))),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            InkWell(
                              onTap: () async {
                                _showOptionFive(context);
                              },
                              child: PhotoCubit.get(context)
                                          .captainLicenseFront ==
                                      null
                                  ? Container(
                                      height: 40,
                                      width: 200,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(24),
                                        color: Colors.black38,
                                      ),
                                      child: Center(
                                          child: Text(
                                        'UploadPhoto5',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      )),
                                    )
                                  : SizedBox(
                                      height: 100,
                                      width: 100,
                                      child: Image.file(File(
                                          PhotoCubit.get(context)
                                              .captainLicenseFront!
                                              .path))),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            InkWell(
                              onTap: () async {
                                _showOptionSix(context);
                              },
                              child: PhotoCubit.get(context)
                                          .captainLicenseBack ==
                                      null
                                  ? Container(
                                      height: 40,
                                      width: 200,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(24),
                                        color: Colors.black38,
                                      ),
                                      child: Center(
                                          child: Text(
                                        'UploadPhoto6',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      )),
                                    )
                                  : SizedBox(
                                      height: 100,
                                      width: 100,
                                      child: Image.file(File(
                                          PhotoCubit.get(context)
                                              .captainLicenseBack!
                                              .path))),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: InkWell(
                                onTap: () {
                                  PhotoCubit.get(context)
                                      .getUploadImagePersonal(
                                          personalAvatar:
                                              PhotoCubit.get(context)
                                                  .personalAvatar,
                                          idPhotoFront: PhotoCubit.get(context)
                                              .idPhotoFront,
                                          idPhotoBack: PhotoCubit.get(context)
                                              .idPhotoBack,
                                          criminalRecord:
                                              PhotoCubit.get(context)
                                                  .criminalRecord,
                                          captainLicenseFront:
                                              PhotoCubit.get(context)
                                                  .captainLicenseFront,
                                          captainLicenseBack:
                                              PhotoCubit.get(context)
                                                  .captainLicenseBack);
                                },
                                child: Container(
                                  height: 50,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      gradient: LinearGradient(colors: [
                                        Color(0xFF0D47A1),
                                        Color(0xFF1976D2),
                                        Color(0xFF42A5F5),
                                      ])),
                                  child: Center(
                                    child: Text(
                                      'Send',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ]),
                    ]))));
      },
    );
  }
}
