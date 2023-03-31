// ignore_for_file: prefer_const_constructors, unused_field, non_constant_identifier_names, use_key_in_widget_constructors

import 'package:e_commerce_app/consts/consts.dart';
import 'package:e_commerce_app/consts/views/home/home_screen.dart';
import 'package:e_commerce_app/consts/views/screens/home.dart';
import 'package:e_commerce_app/controller/auth-controller.dart';
import 'package:e_commerce_app/widgets/bg_widgets.dart';
import 'package:e_commerce_app/widgets/logo_widgets.dart';
import 'package:e_commerce_app/widgets/text_field1.dart';
import 'package:e_commerce_app/widgets/text_field2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _checkColor = false;
  var controller = Get.put(AuthController());

  //text Controller
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var conPassController = TextEditingController();
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
                  child: Obx(
                    () => Column(
                      children: [
                        customTextField1(
                            name, confirmPassword, nameController, false),
                        10.heightBox,
                        customTextField2(
                            email, emailHint, emailController, false),
                        10.heightBox,
                        customTextField2(
                            password, passwordHint, passwordController, true),
                        10.heightBox,
                        customTextField1(confirmPassword, confirmPassword,
                            conPassController, true),
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
                        controller.isLoading.value
                            ? CircularProgressIndicator()
                            : _checkColor
                                ? TextButton(
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStatePropertyAll(Colors.red),
                                      minimumSize: MaterialStatePropertyAll(
                                          Size(250, 40)),
                                    ),
                                    onPressed: () async {
                                      if (_checkColor != false) {
                                        controller.isLoading(true);
                                        try {
                                          await controller
                                              .signupMethod(
                                                  context: context,
                                                  email: emailController.text,
                                                  password:
                                                      passwordController.text)
                                              .then((value) {
                                            return controller.storeUserData(
                                              name: nameController.text,
                                              email: emailController.text,
                                              password: passwordController.text,
                                            );
                                          }).then((value) {
                                            VxToast.show(context,
                                                msg: "Logged In");
                                            Get.offAll(() => Home());
                                          });
                                        } catch (e) {
                                          auth.signOut();
                                          VxToast.show(context,
                                              msg: "Try Again");
                                          controller.isLoading(false);
                                        }
                                      }
                                    },
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
                )
              ]),
            )));
  }
}
