// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test_image/my_container.dart';
import 'package:test_image/screen/carPage.dart';
import 'package:test_image/screen/imageApi.dart';
import 'package:test_image/screen/personalPage.dart';

class Start extends StatelessWidget {
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFF1976D2),
        title: Text(
          'Welcom',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
          // shrinkWrap: true,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 50),
              child: Column(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CarPage()),
                        );
                      },
                      child: My_Container(text: 'Send Photo Car')),
                  Gap(20),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PersonalPage()),
                        );
                      },
                      child: My_Container(text: 'Send Photo Person')),
                  Gap(20),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ImageApi()),
                        );
                      },
                      child: My_Container(text: 'Show My Photo'))
                ],
              ),
            )
          ]),
    );
  }
}
