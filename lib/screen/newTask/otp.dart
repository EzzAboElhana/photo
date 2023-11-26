// // // ignore_for_file: prefer_const_constructors, must_be_immutable

// // import 'package:flutter/material.dart';
// // import 'package:flutter_bloc/flutter_bloc.dart';
// // import 'package:gap/gap.dart';
// // import 'package:pinput/pinput.dart';
// // import 'package:test_image/changePasswor.dart';
// // import 'package:test_image/cubit/cubit/photo_cubit.dart';
// // import 'package:test_image/screen/test_otp.dart';

// // class OTP extends StatelessWidget {
// //   final String phone;
// //   var checkController = TextEditingController();
// //   var otpController = TextEditingController();

// //   OTP({super.key, required this.phone});

// //   @override
// //   Widget build(BuildContext context) {
// //     return BlocConsumer<PhotoCubit, PhotoState>(
// //       listener: (context, state) {
// //         if (state is GetOTPSuccessState) {
// //           Navigator.push(
// //             context,
// //             MaterialPageRoute(
// //                 builder: (context) => Password(
// //                       phone: phone,
// //                     )),
// //           );
// //         }
// //       },
// //       builder: (context, state) {
// //         return Scaffold(
// //           appBar: AppBar(
// //             title: Text("Welcom"),
// //             backgroundColor: Colors.blueAccent,
// //           ),
// //           body: Padding(
// //             padding: const EdgeInsets.only(left: 16, right: 16),
// //             child: Column(
// //               crossAxisAlignment: CrossAxisAlignment.start,
// //               children: [
// //                 Gap(50),
// //                 Text(
// //                   'Forgot Password',
// //                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
// //                 ),
// //                 Gap(50),
// //                 Text(
// //                   'Please enter your phone number so we can send a verify code to reset your password $phone',
// //                   style: TextStyle(
// //                     fontSize: 10,
// //                   ),
// //                 ),
// //                 Gap(5),
// //                 SizedBox(
// //                   height: 50,
// //                 ),
// //                 SizedBox(
// //                   child: Pinput(
// //                     controller: checkController,
// //                     length: 6,
// //                   ),
// //                 ),
// //                 GestureDetector(
// //                   onTap: () {
// //                     PhotoCubit.get(context)
// //                         .getcheckOtp(otp: checkController.text, mobile: phone);
// //                   },
// //                   child: Container(
// //                     height: 50,
// //                     width: double.infinity,
// //                     color: Colors.blueAccent,
// //                     child: Center(
// //                         child: Text(
// //                       'Send',
// //                       style: TextStyle(
// //                           fontSize: 20,
// //                           fontWeight: FontWeight.bold,
// //                           color: Colors.white),
// //                     )),
// //                   ),
// //                 )
// //               ],
// //             ),
// //           ),
// //         );
// //       },
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:gap/gap.dart';
// import 'package:pinput/pinput.dart';
// import 'package:test_image/changePasswor.dart';
// import 'package:test_image/cubit/cubit/photo_cubit.dart';
// import 'package:test_image/screen/forgot%20Password.dart';
// import 'package:test_image/screen/test_otp.dart';

// class OTP extends StatelessWidget {
//   final String phone;
//   var checkController = TextEditingController();
//   var otpController = TextEditingController();

//   OTP({Key? key, required this.phone});

//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<PhotoCubit, PhotoState>(
//       listener: (context, state) {
//         if (state is GetOTPSuccessState) {
//           final previousPage = ModalRoute.of(context)!.settings.arguments;
//           if (previousPage == 'CheckPhone') {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => OTP(
//                   phone: phone,
//                 ),
//               ),
//             );
//           } else if (previousPage == 'ForgotPassword') {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => Password(
//                   phone: phone,
//                 ),
//               ),
//             );
//           }
//         }
//       },
//       builder: (context, state) {
//         return Scaffold(
//           appBar: AppBar(
//             title: Text("Welcome"),
//             backgroundColor: Colors.blueAccent,
//           ),
//           body: Padding(
//             padding: const EdgeInsets.only(left: 16, right: 16),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Gap(50),
//                 Text(
//                   'Forgot Password',
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                 ),
//                 Gap(50),
//                 Text(
//                   'Please enter your phone number so we can send a verify code to reset your password $phone',
//                   style: TextStyle(
//                     fontSize: 10,
//                   ),
//                 ),
//                 Gap(5),
//                 SizedBox(
//                   height: 50,
//                   child: Pinput(
//                     controller: checkController,
//                     length: 6,
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     PhotoCubit.get(context).getcheckOtp(
//                       otp: checkController.text,
//                       mobile: phone,
//                     );
//                   },
//                   child: Container(
//                     height: 50,
//                     width: double.infinity,
//                     color: Colors.blueAccent,
//                     child: Center(
//                       child: Text(
//                         'Send',
//                         style: TextStyle(
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:gap/gap.dart';
// import 'package:pinput/pinput.dart';
// import 'package:test_image/cubit/cubit/photo_cubit.dart';
// import 'package:test_image/screen/test_otp.dart';

// class OTP extends StatelessWidget {
//   final String phone;
//   var checkController = TextEditingController();
//   var otpController = TextEditingController();

//   OTP({super.key, required this.phone});

// ignore_for_file: prefer_const_constructors, use_super_parameters, must_be_immutable

//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<PhotoCubit, PhotoState>(
//       listener: (context, state) {
//         if (state is GetOTPSuccessState) {
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => TestOtp()),
//           );
//         }
//       },
//       builder: (context, state) {
//         return Scaffold(
//           appBar: AppBar(
//             title: Text("Welcom"),
//             backgroundColor: Colors.blueAccent,
//           ),
//           body: Padding(
//             padding: const EdgeInsets.only(left: 16, right: 16),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Gap(50),
//                 Text(
//                   'Forgot Password',
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                 ),
//                 Gap(50),
//                 Text(
//                   'Please enter your phone number so we can send a verify code to reset your password',
//                   style: TextStyle(
//                     fontSize: 10,
//                   ),
//                 ),
//                 SizedBox(
//                   height: 50,
//                 ),
//                 SizedBox(
//                   child: Pinput(
//                     controller: checkController,
//                     length: 6,
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     PhotoCubit.get(context)
//                         .getcheckOtp(otp: checkController.text, mobile: phone);
//                   },
//                   child: Container(
//                     height: 50,
//                     width: double.infinity,
//                     color: Colors.blueAccent,
//                     child: Center(
//                         child: Text(
//                       'Send',
//                       style: TextStyle(
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white),
//                     )),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:pinput/pinput.dart';
import 'package:test_image/cubit/cubit/photo_cubit.dart';
import 'package:test_image/screen/newTask/register.dart';

class OTPRegister extends StatelessWidget {
  final String phone;
  var checkController = TextEditingController();
  var otpController = TextEditingController();

  OTPRegister({Key? key, required this.phone}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PhotoCubit, PhotoState>(
      listener: (context, state) {
        if (state is GetOTPSuccessState) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Register()),
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
