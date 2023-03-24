// ignore_for_file: unused_element, camel_case_types, unnecessary_import

import 'package:e_commerce_app/consts/colors.dart';
import 'package:flutter/material.dart';

import '../consts/consts.dart';

Widget signupButton(BuildContext context) {
  return ElevatedButton(
    style: const ButtonStyle(
      backgroundColor: MaterialStatePropertyAll(lightRed),
    ),
    onPressed: () {},
    child: "Sign Up".text.white.fontFamily(bold).make(),
  );
}
