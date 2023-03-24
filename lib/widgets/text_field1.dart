// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:e_commerce_app/consts/consts.dart';
import 'package:flutter/material.dart';

Widget customTextField1(
  String? name,
  String? confirmPassword,
) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    // ignore: prefer_const_literals_to_create_immutables
    children: [
      // ignore: prefer_const_constructors
      name!.text.color(darkRed).semiBold.size(15).make(),
      TextFormField(
        decoration: InputDecoration(
            hintText: name,
            hintStyle: TextStyle(
              fontFamily: semibold,
              color: Colors.grey,
            ),
            fillColor: lightGrey,
            border: InputBorder.none,
            filled: true,
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
              color: redColor,
            ))),
      )
    ],
  );
}
