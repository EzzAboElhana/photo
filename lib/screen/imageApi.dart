// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

import 'package:flutter/material.dart';
import 'package:test_image/screen/imageGrid.dart';
import 'package:test_image/personImage.dart';

class ImageApi extends StatelessWidget {
  ImageApi({Key? key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
            'Get Image Api',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          bottom: TabBar(
            indicatorColor: Colors.red,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.directions_car,
                  color: Colors.white,
                ),
                child: Text(
                  'Car',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                // text: 'شخص',
                child: Text(
                  'Person',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ImageGrid(imageType: 'Car'),
            PersonImage(
              imageType: 'Person',
            ),
          ],
        ),
      ),
    );
  }
}
