// ignore_for_file: prefer_const_constructors, unnecessary_null_comparison, use_super_parameters, use_build_context_synchronously, prefer_const_literals_to_create_immutables

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:test_image/cubit/cubit/photo_cubit.dart';

class CarPage extends StatefulWidget {
  const CarPage({Key? key}) : super(key: key);

  @override
  State<CarPage> createState() => _CarPageState();
}

class _CarPageState extends State<CarPage> {
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
    PhotoCubit.get(context).getUploadImageOne(source: ImageSource.gallery);
    Navigator.of(context).pop();
    setState(() {});
  }

  Future _imageFormCamera(BuildContext context) async {
    PhotoCubit.get(context).getUploadImageOne(source: ImageSource.camera);
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
    PhotoCubit.get(context).getUploadImageTwo(source: ImageSource.gallery);
    Navigator.of(context).pop();
    setState(() {});
  }

  Future _imageFormCameraTwo(BuildContext context) async {
    PhotoCubit.get(context).getUploadImageTwo(source: ImageSource.camera);
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
    PhotoCubit.get(context).getUploadImageThree(source: ImageSource.gallery);
    Navigator.of(context).pop();
    setState(() {});
  }

  Future _imageFormCameraThree(BuildContext context) async {
    PhotoCubit.get(context).getUploadImageThree(source: ImageSource.camera);
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
    PhotoCubit.get(context).getUploadImageFour(source: ImageSource.gallery);
    Navigator.of(context).pop();
    setState(() {});
  }

  Future _imageFormCameraFour(BuildContext context) async {
    PhotoCubit.get(context).getUploadImageFour(source: ImageSource.camera);
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
    PhotoCubit.get(context).getUploadImageFive(source: ImageSource.gallery);
    Navigator.of(context).pop();
    setState(() {});
  }

  Future _imageFormCameraFive(BuildContext context) async {
    PhotoCubit.get(context).getUploadImageFive(source: ImageSource.camera);
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
    PhotoCubit.get(context).getUploadImageSix(source: ImageSource.gallery);
    Navigator.of(context).pop();
    setState(() {});
  }

  Future _imageFormCameraSix(BuildContext context) async {
    PhotoCubit.get(context).getUploadImageSix(source: ImageSource.camera);
    Navigator.of(context).pop();
    setState(() {});
    // }
  }

  _showOptionSeven(BuildContext context) {
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
                      onTap: () => _imageFormGallrySeven(context),
                    ),
                    ListTile(
                      leading: Icon(Icons.image),
                      title: Text('camera'),
                      onTap: () => _imageFormCameraSeven(context),
                    ),
                  ],
                ),
              ),
            ));
  }

  Future _imageFormGallrySeven(BuildContext context) async {
    PhotoCubit.get(context).getUploadImageSeven(source: ImageSource.gallery);
    Navigator.of(context).pop();
    setState(() {});
  }

  Future _imageFormCameraSeven(BuildContext context) async {
    PhotoCubit.get(context).getUploadImageSeven(source: ImageSource.camera);
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Center(
                              child: InkWell(
                                onTap: () async {
                                  _showOption(context);
                                },
                                child:
                                    PhotoCubit.get(context).carLicenseFront ==
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
                                                    .carLicenseFront!
                                                    .path)),
                                          ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            InkWell(
                              onTap: () async {
                                _showOptionTwo(context);
                              },
                              child: PhotoCubit.get(context).carLicenseBack ==
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
                                              .carLicenseBack!
                                              .path)),
                                    ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            InkWell(
                              onTap: () async {
                                _showOptionThree(context);
                              },
                              child: PhotoCubit.get(context).carFront == null
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
                                              .carFront!
                                              .path))),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            InkWell(
                              onTap: () async {
                                _showOptionFour(context);
                              },
                              child: PhotoCubit.get(context).carBack == null
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
                                              .carBack!
                                              .path))),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            InkWell(
                              onTap: () async {
                                _showOptionFive(context);
                              },
                              child: PhotoCubit.get(context).carRight == null
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
                                              .carRight!
                                              .path))),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            InkWell(
                              onTap: () async {
                                _showOptionSix(context);
                              },
                              child: PhotoCubit.get(context).carLeft == null
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
                                              .carLeft!
                                              .path))),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            InkWell(
                              onTap: () async {
                                _showOptionSeven(context);
                              },
                              child: PhotoCubit.get(context).carInside == null
                                  ? Container(
                                      height: 40,
                                      width: 200,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(24),
                                        color: Colors.black38,
                                      ),
                                      child: Center(
                                          child: Text(
                                        'UploadPhoto7',
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
                                              .carInside!
                                              .path)),
                                    ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: InkWell(
                                onTap: () {
                                  PhotoCubit.get(context).getUploadImage(
                                    carRight: PhotoCubit.get(context).carRight,
                                    carBack: PhotoCubit.get(context).carBack,
                                    carFront: PhotoCubit.get(context).carFront,
                                    carLeft: PhotoCubit.get(context).carLeft,
                                    carLicenseBack:
                                        PhotoCubit.get(context).carLicenseBack,
                                    carLicenseFront:
                                        PhotoCubit.get(context).carLicenseFront,
                                    carInside:
                                        PhotoCubit.get(context).carInside,
                                  );
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
