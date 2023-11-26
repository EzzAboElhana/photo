// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_image/cubit/cubit/photo_cubit.dart';
import 'package:test_image/screen/newTask/test_otp.dart';

// ignore: must_be_immutable
class Password extends StatelessWidget {
  final String phone;

  var passwordController = TextEditingController();

  Password({super.key, required this.phone});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PhotoCubit, PhotoState>(
      listener: (context, state) {
        if (state is GetOTPSuccessState) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TestOtp()),
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Welcom"),
            backgroundColor: Colors.blueAccent,
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 50,
              ),
              Text(
                'New Password',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                'Please enter your phone number so we can send a verify code to reset your password',
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              TextFormField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: 'New Password',
                ),
              ),
              SizedBox(
                height: 150,
              ),
              InkWell(
                onTap: () {
                  PhotoCubit.get(context).getchangePassword(
                      password: passwordController.text, phone: phone);
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  color: Colors.blueAccent,
                  child: Center(
                      child: Text(
                    'Send',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
                ),
              )
            ]),
          ),
        );
      },
    );
  }
}
