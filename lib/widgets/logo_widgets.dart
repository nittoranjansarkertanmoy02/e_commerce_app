import 'package:e_commerce_app/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/consts/colors.dart';

Widget logoWidget() {
  return Image.asset(icAppLogo)
      .box
      .blue100
      .size(77, 77)
      .padding(const EdgeInsets.all(8.0))
      .rounded
      .make();
}
