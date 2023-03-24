// ignore_for_file: unused_element, camel_case_types, unnecessary_import, prefer_const_constructors

import 'package:e_commerce_app/consts/colors.dart';
import 'package:e_commerce_app/consts/views/screens/signup_screen.dart';
import 'package:flutter/material.dart';

import '../consts/consts.dart';

Widget signupButton(BuildContext context) {
  return ElevatedButton(
    style: const ButtonStyle(
      backgroundColor:
          MaterialStatePropertyAll(Color.fromARGB(255, 208, 49, 37)),
    ),
    onPressed: () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SignUp(),
          ));
    },
    child: "Sign Up".text.white.fontFamily(bold).make(),
  );
}
