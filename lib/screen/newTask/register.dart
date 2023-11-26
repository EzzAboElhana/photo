// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

// ignore_for_file: prefer_const_constructors_in_immutables, annotate_overrides, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_image/cubit/cubit/photo_cubit.dart';
import 'package:test_image/screen/newTask/test_otp.dart';
import 'package:test_image/special_formfield.dart';

class Register extends StatefulWidget {
  Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool isVisibility = true;

  void visibility() {
    isVisibility = !isVisibility;
  }

  void initState() {
    super.initState();
  }

  var phoneController = TextEditingController();
  var passwordController = TextEditingController();
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var genderController = TextEditingController();
  var countryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PhotoCubit, PhotoState>(
      listener: (context, state) {
        if (state is GetRegisterLoadingState) {}
        if (state is GetRegisterSuccessState) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TestOtp()),
          );
        }
        if (state is GetRegisterLoadingState) {}
      },
      builder: (context, state) {
        return Scaffold(
            body: Expanded(
                child: MediaQuery.removePadding(
                    context: context,
                    removeTop: true,
                    child: ListView(children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 24, right: 24, top: 50),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Welcome Dear',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Special_FormField(
                              validator: (String value) {
                                if (value.isEmpty) {
                                  return 'Phone must not be empty';
                                }

                                return null;
                              },
                              controller: nameController,
                              labelText: ' name',
                              keyboardType: TextInputType.name,
                              obscureText: false,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Special_FormField(
                              validator: (String value) {
                                if (value.isEmpty) {
                                  return 'Phone must not be empty';
                                }

                                return null;
                              },
                              controller: phoneController,
                              labelText: 'Phone Number',
                              keyboardType: TextInputType.phone,
                              obscureText: false,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Special_FormField(
                              validator: (String value) {
                                if (value.isEmpty) {
                                  return 'email must not be empty';
                                }

                                return null;
                              },
                              controller: emailController,
                              labelText: 'email',
                              keyboardType: TextInputType.emailAddress,
                              obscureText: false,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Special_FormField(
                              validator: (String value) {
                                if (value.isEmpty) {
                                  return 'Phone must not be empty';
                                }

                                return null;
                              },
                              controller: countryController,
                              labelText: 'country',
                              keyboardType: TextInputType.phone,
                              obscureText: false,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Special_FormField(
                              validator: (String value) {
                                if (value.isEmpty) {
                                  return 'Phone must not be empty';
                                }

                                return null;
                              },
                              controller: genderController,
                              labelText: 'gender',
                              keyboardType: TextInputType.phone,
                              obscureText: false,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Special_FormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter the Product Name ';
                                }
                                if (value.length > 25) {
                                  return 'Product Name cannot be longer than 25 characters';
                                }
                                if (value.length < 2) {
                                  return 'Product Name  must have at least 2 characters';
                                }
                                return null;
                              },
                              controller: passwordController,
                              labelText: 'password',
                              keyboardType: TextInputType.phone,
                              obscureText: false,
                              suffixIcon: InkWell(
                                onTap: () {},
                                child: Icon(isVisibility
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            // Expanded(child: SizedBox()),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 50),
                              child: GestureDetector(
                                onTap: () {
                                  PhotoCubit.get(context).getRegisterData(
                                      phone: phoneController.text.trim(),
                                      password: passwordController.text,
                                      name: nameController.text,
                                      email: emailController.text,
                                      gender: genderController.text,
                                      country: countryController.text);
                                },
                                child: Container(
                                  height: 50,
                                  width: double.infinity,
                                  color: Colors.blueAccent,
                                  child: Center(
                                      child: Text(
                                    'Welcome Dear',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                    ),
                                  )),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ]))));
      },
    );
  }
}
