// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_image/cubit/cubit/photo_cubit.dart';

class ImageGrid extends StatelessWidget {
  final String imageType;

  const ImageGrid({required this.imageType, super.key});

  @override
  Widget build(BuildContext context) {
    PhotoCubit.get(context).getImagePersonalModel(type: "car");

    return BlocConsumer<PhotoCubit, PhotoState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is GetImageSuccessState) {
          // final imageModel = state.imageModel;
          final lastSixImages =
              state.imageModel.data!.reversed.take(7).toList();
          final filteredImages = lastSixImages
              // .where((image) => image.category == imageType)
              .toList();
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemCount: filteredImages.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blueGrey),
                  ),
                  child: Image.network(filteredImages[index].imagePath!),
                ),
              );
            },
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
