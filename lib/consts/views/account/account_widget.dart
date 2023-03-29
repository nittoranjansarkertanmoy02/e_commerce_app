import 'package:e_commerce_app/consts/consts.dart';
import 'package:flutter/cupertino.dart';

Widget detailsCard(
  width,
  String? title,
) {
  return Column(
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          title!.text.make(),
          "in your cart".text.make(),
        ],
      )
          .box
          .color(const Color.fromARGB(255, 230, 227, 227))
          .height(80)
          .width(width)
          .rounded
          .make()
    ],
  );
}
