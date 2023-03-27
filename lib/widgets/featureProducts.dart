import 'package:e_commerce_app/consts/consts.dart';
import 'package:flutter/material.dart';

Widget featurePrductss(icons, String title) {
  return Row(
    children: [
      Image.asset(
        icons,
      ),
      5.widthBox,
      featureProductsName.text.make(),
    ],
  );
}
