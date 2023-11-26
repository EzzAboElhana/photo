// import 'package:flutter/material.dart';

// class OTPPassword extends StatelessWidget {
//   const OTPPassword({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }

// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:pinput/pinput.dart';
import 'package:test_image/screen/newTask/changePasswor.dart';
import 'package:test_image/cubit/cubit/photo_cubit.dart';
import 'package:test_image/screen/newTask/register.dart';

class OTPPassword extends StatelessWidget {
  final String phone;
  var checkController = TextEditingController();
  var otpController = TextEditingController();

  OTPPassword({super.key, required this.phone});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PhotoCubit, PhotoState>(
      listener: (context, state) {
        if (state is GetOTPSuccessState) {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Password(
                      phone: phone,
                    )),
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Welcome"),
            backgroundColor: Colors.blueAccent,
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(50),
                Text(
                  'Check the otp',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                  child: Pinput(
                    controller: checkController,
                    length: 6,
                  ),
                ),
                Gap(50),
                GestureDetector(
                  onTap: () {
                    PhotoCubit.get(context)
                        .getcheckOtp(otp: checkController.text, mobile: phone);
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
              ],
            ),
          ),
        );
      },
    );
  }
}
