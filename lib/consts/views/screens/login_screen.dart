// ignore_for_file: unused_local_variable, unnecessary_import

import 'package:e_commerce_app/consts/consts.dart';
import 'package:e_commerce_app/consts/views/screens/home.dart';
import 'package:e_commerce_app/controller/auth-controller.dart';
import 'package:e_commerce_app/widgets/bg_widgets.dart';
import 'package:e_commerce_app/widgets/login_button.dart';
import 'package:e_commerce_app/widgets/login_images-list.dart';
import 'package:e_commerce_app/widgets/logo_widgets.dart';
import 'package:e_commerce_app/widgets/signup_button.dart';
import 'package:e_commerce_app/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(AuthController());
    var emailController = TextEditingController();
    var passwordController = TextEditingController();

    // ignore: prefer_const_constructors
    return bgWidget(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            logoWidget(),
            5.heightBox,
            "Welcome to $appname".text.fontFamily(bold).size(15).white.make(),
            15.heightBox,
            Column(
              children: [
                customTextField(email, emailHint, emailController),
                15.heightBox,
                customTextField(password, passwordHint, passwordController),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forgot Password',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      )),
                ),
                loginButton(context)
                    .box
                    .width(context.screenWidth - 50)
                    .make()
                    .onTap(() async {
                  await controller.loginMethod().then((value) => () {
                        if (value != null) {
                          VxToast.show(context, msg: "Logged in");
                          Get.offAll(() => const Home());
                        }
                      });
                }),
                5.heightBox,
                createNewAccount.text.color(Colors.grey).make(),
                10.heightBox,
                signupButton(context)
                    .box
                    .width(context.screenWidth - 50)
                    .make(),
                5.heightBox,
                loginWith.text.color(Colors.grey).make(),
                10.heightBox,
                loginImages().onTap(() {}),
              ],
            )
                .box
                .white
                .rounded
                .padding(const EdgeInsets.all(15))
                .width(context.screenWidth - 30)
                .shadowSm
                .make()
          ],
        ),
      ),
    ));
  }
}
