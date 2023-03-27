// ignore_for_file: non_constant_identifier_names

import 'package:e_commerce_app/consts/consts.dart';
import 'package:flutter/material.dart';

Widget homeWidgets(width, height, icon, String title, onPress) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(
        icon,
        width: 25,
      ),
      5.heightBox,
      title.text.fontFamily(semibold).color(Colors.grey).make(),
    ],
  ).box.rounded.white.size(width, height).shadowSm.make();
}

Widget homeWidgets1(height, width, icon, String title, opPress) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(
        icon,
        width: 25,
      ),
      5.heightBox,
      title.text.fontFamily(semibold).color(Colors.grey).make(),
    ],
  ).box.rounded.white.size(width, height).shadow.make();
}
