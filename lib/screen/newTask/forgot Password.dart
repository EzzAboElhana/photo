// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_image/cubit/cubit/photo_cubit.dart';
import 'package:test_image/screen/newTask/otp.dart';
import 'package:test_image/screen/newTask/otp_password.dart';

class ForgotPassword extends StatelessWidget {
  var phoneController = TextEditingController();

  ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PhotoCubit, PhotoState>(
      listener: (context, state) {
        // if (state is GetOTPSuccessState) {
        //   Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //         builder: (context) => OTPPassword(
        //               phone: phoneController.text,
        //             )),
        //   );
        // }
        if (state is PhoneRegisteredSuccessState) {
          PhotoCubit.get(context).getOtp(
            mobile: phoneController.text,
          );
          // ScaffoldMessenger.of(context).showSnackBar(
          //   SnackBar(
          //     backgroundColor: Colors.red,
          //     content: Text('Phone number is already registered.'),
          //   ),
          // );
        }
        if (state is PhoneRegisteredFailedState) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.red,
              content: Text('This phone is not registered.'),
            ),
          );
          // PhotoCubit.get(context).getOtp(
          //   mobile: phoneController.text,
          // );
//الغلط كان هنا ازاي بقوله يبعت ال OTP ويدخل علي طول
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => OTP(
          //       phone: phoneController.text,
          //     ),
          //   ),
          // );
        }
        if (state is GetOTPSuccessState) {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => OTPPassword(
                      phone: phoneController.text,
                    )),
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
                'Forgot Password',
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
                controller: phoneController,
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                ),
              ),
              SizedBox(
                height: 150,
              ),
              GestureDetector(
                onTap: () {
                  PhotoCubit.get(context).getcheckPhone(
                    phone: phoneController.text,
                    // username: 'mr.hosamsaleh@yahoo.com',
                    // sender: 'EL Trip',
                    // lang: 'en',
                    // password: '6H]N3X??B6VO',
                  );
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
