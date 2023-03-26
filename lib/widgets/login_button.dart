// ignore_for_file: unused_element, camel_case_types, unnecessary_import, prefer_const_constructors

import 'package:e_commerce_app/consts/colors.dart';
import 'package:e_commerce_app/consts/views/screens/home.dart';
import 'package:e_commerce_app/consts/views/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import '../consts/consts.dart';

Widget loginButton(BuildContext context) {
  return ElevatedButton(
    style: const ButtonStyle(
      backgroundColor: MaterialStatePropertyAll(darkRed),
    ),
    onPressed: () {
      Get.to(() => Home());
    },
    child: "Log in".text.white.fontFamily(bold).make(),
  );
}
