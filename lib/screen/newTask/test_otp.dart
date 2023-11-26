// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TestOtp extends StatefulWidget {
  const TestOtp({super.key});

  @override
  State<TestOtp> createState() => _TestOtpState();
}

class _TestOtpState extends State<TestOtp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            'Finsh Task',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        )
      ],
    ));
  }
}
