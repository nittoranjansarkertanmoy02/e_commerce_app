// ignore_for_file: prefer_const_constructors

import 'package:e_commerce_app/consts/consts.dart';
import 'package:flutter/material.dart';

Widget featureButton(icon, String title) {
  return Row(
    children: [
      Image.asset(
        icon,
        width: 50,
        fit: BoxFit.fill,
      ),
      5.widthBox,
      title.text.color(Colors.black).fontFamily(semibold).make(),
    ],
  )
      .box
      .white
      .width(200)
      .height(100)
      .rounded
      .padding(EdgeInsets.all(5))
      .margin(EdgeInsets.symmetric(horizontal: 5, vertical: 5))
      .shadowSm
      .make();
}
