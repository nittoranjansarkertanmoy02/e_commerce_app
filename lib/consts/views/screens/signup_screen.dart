// ignore_for_file: prefer_const_constructors, unused_field

import 'package:e_commerce_app/consts/consts.dart';
import 'package:e_commerce_app/widgets/bg_widgets.dart';
import 'package:e_commerce_app/widgets/logo_widgets.dart';
import 'package:e_commerce_app/widgets/signup_button.dart';
import 'package:e_commerce_app/widgets/text_field.dart';
import 'package:e_commerce_app/widgets/text_field1.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _checkColor = false;
  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Center(
              child: Column(children: [
                (context.screenHeight * 0.1).heightBox,
                logoWidget(),
                5.heightBox,
                "Welcome \n Sign Up"
                    .text
                    .white
                    .fontFamily(bold)
                    .size(16)
                    .make(),
                15.heightBox,
                Expanded(
                  child: Column(
                    children: [
                      customTextField1(name, confirmPassword),
                      10.heightBox,
                      customTextField(email, emailHint),
                      10.heightBox,
                      customTextField(password, passwordHint),
                      10.heightBox,
                      customTextField1(confirmPassword, confirmPassword),
                      Row(
                        children: [
                          Checkbox(
                            checkColor: Colors.white,
                            activeColor: Colors.red,
                            value: _checkColor,
                            onChanged: (value) {
                              setState(() {
                                _checkColor = value!;
                              });
                            },
                          ),
                          Text('I agree to this terms and conditions.')
                        ],
                      ),
                      15.heightBox,
                      _checkColor
                          ? TextButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.red),
                                minimumSize:
                                    MaterialStatePropertyAll(Size(250, 40)),
                              ),
                              onPressed: () {},
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                  color: Colors.white,
                                  letterSpacing: 2.5,
                                ),
                              ))
                          : Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text(
                                'Please agree to the terms and conditions before signing up.',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                      10.heightBox,
                      RichText(
                          text: TextSpan(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                            TextSpan(
                                text: 'Already have an account?',
                                style: TextStyle(
                                    fontFamily: bold, color: Colors.black)),
                            TextSpan(
                                text: '  Log in',
                                style: TextStyle(
                                  fontFamily: bold,
                                  color: Colors.red,
                                ))
                          ])).onTap(() {
                        Get.back();
                      })
                    ],
                  )
                      .box
                      .white
                      .shadowSm
                      .rounded
                      .padding(EdgeInsets.all(10.0))
                      .width(context.screenWidth - 30)
                      .make(),
                ),
              ]),
            )));
  }
}
