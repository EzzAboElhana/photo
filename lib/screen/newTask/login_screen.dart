// ignore_for_file: camel_case_types, prefer_const_constructors_in_immutables, use_super_parameters, library_private_types_in_public_api, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_image/cubit/cubit/photo_cubit.dart';
import 'package:test_image/screen/newTask/otp.dart';

class Login_Screen extends StatefulWidget {
  Login_Screen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<Login_Screen> {
  var phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PhotoCubit, PhotoState>(
      listener: (context, state) {
        if (state is PhoneRegisteredSuccessState) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.red,
              content: Text('Phone number is already registered.'),
            ),
          );
        }
        if (state is PhoneRegisteredFailedState) {
          PhotoCubit.get(context).getOtp(
            mobile: phoneController.text,
          );
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
                builder: (context) => OTPRegister(
                      phone: phoneController.text,
                    )),
          );
        }
      },
      builder: (context, state) {
        PhotoCubit photoCubit = PhotoCubit.get(context);

        return Scaffold(
          appBar: AppBar(
            title: Text("Welcome"),
            backgroundColor: Colors.blueAccent,
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Login Screen',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                    photoCubit.getcheckPhone(
                      phone: phoneController.text,
                    );
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    color: Colors.blueAccent,
                    child: Center(
                      child: Text(
                        'Create an account',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
