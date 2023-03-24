// ignore_for_file: unused_import

import 'package:e_commerce_app/consts/views/screens/login_screen.dart';
import 'package:e_commerce_app/widgets/logo_widgets.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/consts/consts.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  changeLoginScreen() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        //Using Get.to because of Getx
        Get.to(() => const LoginScreen());
      },
    );
  }

  @override
  void initState() {
    // ignore: todo
    changeLoginScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Center(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                icSplashBg,
                width: 300,
              ),
            ),
            20.heightBox,
            logoWidget(),
            // ignore: prefer_const_constructors
            10.heightBox,
            const Text(
              appname,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            5.heightBox,
            appversion.text.white.make(),
            const Spacer(),
            credits.text.white.fontFamily(semibold).make(),
            20.heightBox,
          ],
        ),
      ),
    );
  }
}
